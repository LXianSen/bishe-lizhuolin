package Services.CartsServices;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.omg.CORBA.OBJ_ADAPTER;

import DAO.BookDao;
import DAO.CartDao;
import DAO.UserDao;
import MODEL.book;
import MODEL.cartitem;
import MODEL.user;
import net.sf.json.JSONObject;

@WebServlet("/CartAdd")
public class CartitemNumsChange extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CartitemNumsChange() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset =UTF-8");
		JSONObject jsonObject=new JSONObject();
		PrintWriter writer=response.getWriter();
		try {

			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset =UTF-8");
			//验证是否登录
			UserDao userDao = new UserDao();
			user u = userDao.CheckIsLogin(request, response);
			if (u != null && !"".equals(u.toString())) {
				CartDao cartDao = new CartDao();
				// 查询用户对应的书籍是否存在购物车
				cartitem cartitem = new cartitem();
				cartitem.setISBN(request.getParameter("isbn").toString());
				cartitem.setUserid(u.getUserid());
				List<cartitem> cartitemlist = cartDao.selects(cartitem);
				// 如果用户购物车存在该购物项，购物项数量+count，否则新建一个购物项，数量为count
				if (cartitemlist.isEmpty()) {
					BookDao bookDao=new BookDao();
					book book=new book();
					book.setISBN(request.getParameter("isbn").toString());
					List<book> books=bookDao.selects(book);
					cartitem.setCount(Integer.parseInt(request.getParameter("count")));
					cartitem.setBprice(books.get(0).getBprice());
					cartitem.setBdiscount(books.get(0).getBdiscount());
					cartDao.adds(cartitem);
					jsonObject.put("code", "200");
					jsonObject.put("msg", "该书籍已成功添加到购物车");
					
				} else {
					cartitem.setCount(cartitemlist.get(0).getCount());
					cartitem cartitem2 = new cartitem();
					// 增加数量/减少数量
					if (request.getParameter("type").equals("minus")) {
						cartitem2.setCount(cartitem.getCount() - Integer.parseInt(request.getParameter("count")));
						
					} else {
						cartitem2.setCount(cartitem.getCount() + Integer.parseInt(request.getParameter("count")));
						if(request.getParameter("type").equals("add")) {
							
						}else {
							jsonObject.put("code", "200");
							jsonObject.put("msg", "该书籍已成功添加到购物车");
						}
						
						
					}
					System.out.println(cartitem2.getCount());
					// set ...count=newcount where=....
					cartDao.updates(cartitem2, cartitem);
					
				}
				writer.println(jsonObject);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// response.sendRedirect("ShowCartlist");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

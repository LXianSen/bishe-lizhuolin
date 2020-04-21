package CartsandOrders;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.BookDao;
import DAO.CartDao;
import MODEL.cartitem;
import MODEL.user;

@WebServlet("/CartAdd")
public class CartAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public CartAdd() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {

		HttpSession session = request.getSession();
		//判断用户是否登录
		user user = (user) session.getAttribute("user");
		if (user == null) {
			response.sendRedirect("login.jsp");
			return;
		}
		System.out.println(user);
		CartDao cartDao = new CartDao();
		
		//查询用户对应的书籍是否存在购物车
		cartitem cartitem=new cartitem();
		cartitem.setIsbn(request.getParameter("isbn").toString());
		cartitem.setuserId(user.getuserId());
		List<cartitem> cartitemlist= cartDao.selects(cartitem);
		//如果用户购物车存在该购物项，购物项数量+1，否则新建一个购物项
		if (cartitemlist == null) {
			cartitem.setCount(Integer.parseInt(request.getParameter("count")));	
			cartDao.adds(cartitem);
		} else {
			cartitem.setCount(Integer.parseInt(request.getParameter("count")));
			cartitem cartitem2=new cartitem();
			cartitem2.setCount(cartitem.getCount()+1);
			
			//set   ...count=newcount  where=....
				cartDao.updates(cartitem2, cartitem);
			}
		} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		response.sendRedirect("ShowCartlist");
	}
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

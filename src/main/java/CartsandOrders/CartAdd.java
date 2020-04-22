package CartsandOrders;

import java.io.IOException;
import java.io.PrintWriter;
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
import net.sf.json.JSONObject;

@WebServlet("/CartAdd")
public class CartAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public CartAdd() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		JSONObject jsonobj = new JSONObject();
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset =UTF-8");
		try {
			
		HttpSession session = request.getSession();
		//�ж��û��Ƿ��¼
		user user = (user) session.getAttribute("user");
		if (user == null) {
			jsonobj.put("code", "error");
			jsonobj.put("msg", "�û�δ��¼���¼̬���ڣ�");
			out.println(jsonobj);
//			response.sendRedirect("login.jsp");
			return;
		}
		System.out.println(user);
		CartDao cartDao = new CartDao();
		//��ѯ�û���Ӧ���鼮�Ƿ���ڹ��ﳵ
		cartitem cartitem=new cartitem();
		cartitem.setIsbn(request.getParameter("isbn").toString());
		cartitem.setuserId(user.getuserId());
		List<cartitem> cartitemlist= cartDao.selects(cartitem);
		//����û����ﳵ���ڸù��������������+1�������½�һ��������
		if (cartitemlist.isEmpty()) {
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
//		response.sendRedirect("ShowCartlist");
	}
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

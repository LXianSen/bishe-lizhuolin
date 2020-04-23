package CartsandOrders;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.CartDao;
import MODEL.cartitem;
import MODEL.user;

@WebServlet("/CartUpdate")
public class CartUpdate extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		cartitem cartitem1 = new cartitem();
		cartitem cartitem2=new cartitem();
		cartitem1.setUserid(session.getAttribute("userid").toString());
		cartitem1.setIsbn(request.getParameter("isbn").toString());
		cartitem2.setCount(Integer.parseInt(request.getParameter("count")));
		CartDao cartDao = new CartDao();
		try {
			//set ....count=newcount    where....
			cartDao.updates(cartitem2,cartitem1);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("ShowCartlist");
	
}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}
}

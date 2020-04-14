package CartServices;
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
		cartitem cartitem = new cartitem();
		cartitem.setuserId(session.getAttribute("userid").toString());
		cartitem.setIsbn(request.getParameter("isbn").toString());
		cartitem.setCount(Integer.parseInt(request.getParameter("count")));
		CartDao cartDao = new CartDao();
		try {
			cartDao.updateNum(cartitem);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("cartlist");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}
}

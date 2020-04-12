package Services;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.CartDao;
import MODEL.cartitem;
import MODEL.user;


@WebServlet("/cartlist")
public class cartlist extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public cartlist() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CartDao cartDao = new CartDao();
		HttpSession session = request.getSession();
		String userid=(String) session.getAttribute("userid");
		double price;
		try {
			List<cartitem> list = cartDao.getAllItems(userid);
			price = cartDao.getsumPrice(userid);
			session.setAttribute("price", price);
			session.setAttribute("list", list);
		}  catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		response.sendRedirect("cart.jsp");

	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

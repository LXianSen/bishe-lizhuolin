package CartServices;

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


@WebServlet("/ShowCartlist")
public class ShowCartlist extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ShowCartlist() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CartDao cartDao = new CartDao();
		HttpSession session = request.getSession();
		user user=(user) session.getAttribute("user");
		cartitem cartitem=new cartitem();
		cartitem.setuserId(user.getuserId());
		double sumprice;
		try {
			List<cartitem> list = cartDao.getAllItems(cartitem);
			sumprice = cartDao.getsumPrice(cartitem);
			session.setAttribute("sumprice", sumprice);
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

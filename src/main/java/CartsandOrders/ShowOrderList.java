package CartsandOrders;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import DAO.BaseDAO;
import DAO.BookDao;
import MODEL.order;
import MODEL.user;


@WebServlet("/MyOrderList")
public class ShowOrderList extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ShowOrderList() {
        super();
    }
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session=request.getSession();
			//ÅÐ¶ÏÓÃ»§ÊÇ·ñµÇÂ¼
			user user = (user) session.getAttribute("user");
			if (user == null) {
				response.sendRedirect("login.jsp");
				return;
			}
			BaseDAO<order> bkDao=new BaseDAO<order>();
			order order=new order();
			order.setFatherorder(request.getParameter("fatherorder"));
			order.setSonorder(request.getParameter("sonorder"));
			List<order> orderlists=bkDao.selects(order);
			request.setAttribute("myorders", orderlists);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

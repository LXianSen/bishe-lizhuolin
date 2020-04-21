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

import DAO.OrderDao;
import MODEL.order;
import MODEL.user;

@WebServlet("/OrderAdd")
public class OrderAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public OrderAdd() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {

		HttpSession session = request.getSession();
		//ÅÐ¶ÏÓÃ»§ÊÇ·ñµÇÂ¼
		user user = (user) session.getAttribute("user");
		if (user == null) {
			response.sendRedirect("login.jsp");
			return;
		}
		System.out.println(user);
		
		OrderDao orderDao = new OrderDao();
		order order=new order();
		Map<String, String[]> parameterMap = request.getParameterMap();
		order orderlist=new order();
		BeanUtils.populate(orderlist, parameterMap);
		orderDao.adds(orderlist);
		} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		response.sendRedirect("ShowOrderList");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

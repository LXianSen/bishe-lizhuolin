package Services.OrderServices;

import java.io.IOException;
import java.io.PrintWriter;
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
import DAO.UserDao;
import MODEL.order;
import MODEL.user;
import net.sf.json.JSONObject;

@WebServlet("/OrderAdd")
public class OrderAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public OrderAdd() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset =UTF-8");
			
			UserDao userDao=new UserDao();
			userDao.CheckIsLogin(request, response);
			
			user u=userDao.CheckIsLogin(request, response);
			
			if(u!=null&&"".equals(u.toString())) {
				System.out.println(u);
				OrderDao orderDao = new OrderDao();
				order order=new order();
				Map<String, String[]> parameterMap = request.getParameterMap();
				BeanUtils.populate(order, parameterMap);
				order.setAddressid(request.getParameter("addressid"));
				orderDao.adds(order);
				} 
		}		catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

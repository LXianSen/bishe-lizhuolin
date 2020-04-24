package Services.OrderServices;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import DAO.OrderDao;
import DAO.UserDao;
import MODEL.order;
import MODEL.user;

@WebServlet("/OrderCancel")
public class OrderStatusChange extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public OrderStatusChange() {
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
				OrderDao orderDao=new OrderDao();
				//定义两个order：原状态order和新状态order
				order orderold=new order();
				order ordernew=new order();
				Map<String, String[]> listMap = request.getParameterMap();
				BeanUtils.populate(orderold, listMap);
				String newstatus=request.getParameter("status");
				ordernew.setStatus(newstatus);
				orderDao.updates(ordernew, orderold);
				
			} 
		}	catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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

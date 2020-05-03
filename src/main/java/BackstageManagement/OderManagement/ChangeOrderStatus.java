package BackstageManagement.OderManagement;

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
import MODEL.orders;
import MODEL.user;


@WebServlet("/ChangeOrderStatus")
public class ChangeOrderStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ChangeOrderStatus() {
        super();
    }

    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		
		UserDao userDao=new UserDao();
		user u=userDao.CheckIsLogin(request, response);
		
		if(u!=null&&!"".equals(u.toString())) {
			OrderDao orderDao=new OrderDao();
			orders ordernew=new orders();
			orders orderold=new orders();
			Map<String, String[]> tempMap=request.getParameterMap();
			try {
				BeanUtils.populate(ordernew, tempMap);
			} catch (IllegalAccessException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (InvocationTargetException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			orderold.setUserid(u.getUserid());
			try {
				orderDao.updates(ordernew, orderold);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

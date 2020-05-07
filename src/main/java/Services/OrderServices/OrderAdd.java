package Services.OrderServices;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import MODEL.orders;
import MODEL.user;
import com.alibaba.fastjson.JSONObject;


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
			
			if(u!=null&&!"".equals(u.toString())) {
				System.out.println(u);
				OrderDao orderDao = new OrderDao();
				orders orders=new orders();
				String orderlist = request.getParameter("orderlist");
				
				List<orders> orderList = JSONObject.parseArray(orderlist, orders.class);
				System.out.println("orderlist  "+orderlist);
				
				//获取当前
				Date date=new Date();
				SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd:HH:mm:ss");
				Timestamp ctime = new Timestamp(date.getTime());
				
				for(int i=0;i<orderList.size();i++) {
					orderList.get(i);
					orderList.get(i).setAddressid(request.getParameter("addressid"));
					orderList.get(i).setDate(ctime);
					orderDao.adds(orderList.get(i));
					
				}
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

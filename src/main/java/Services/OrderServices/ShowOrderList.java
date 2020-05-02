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

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import DAO.BaseDAO;
import DAO.BookDao;
import DAO.OrderDao;
import DAO.UserDao;
import MODEL.order;
import MODEL.user;
import net.sf.json.JSONObject;


@WebServlet("/MyOrderList")
public class ShowOrderList extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ShowOrderList() {
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
				order order=new order();
				order.setUserid(u.getuserId().toString());
				List<Map> orderlists=orderDao.showorderList(order,u);
				PrintWriter o=response.getWriter();
				Gson gson=new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
				String orderJSON=gson.toJson(orderlists);
				o.println(orderlists);
			}
		}catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

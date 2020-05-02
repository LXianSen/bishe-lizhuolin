package BackstageManagement.OderManagement;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
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

import DAO.OrderDao;
import DAO.UserDao;
import MODEL.order;
import MODEL.user;

@WebServlet("/OderSearch")
public class OderSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public OderSearch() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		try {
			UserDao userDao=new UserDao();
			user u=userDao.CheckIsLogin(request, response);
			
			if(u!=null&&!"".equals(u.toString())) {
				OrderDao orderDao=new OrderDao();
				PrintWriter out=response.getWriter();
				Gson gson=new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
				//保存用户输入的搜索条件
				order order=new order();
				Map<String, String[]> parameterMap = request.getParameterMap();
				BeanUtils.populate(order, parameterMap);
				List<Map> orders=orderDao.showorderList(order);
				
				String orderJSON=gson.toJson(orders);
				out.println(orderJSON);
				
			}
		}catch (IllegalAccessException | InvocationTargetException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}

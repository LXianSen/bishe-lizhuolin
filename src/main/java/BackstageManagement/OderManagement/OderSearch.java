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
import MODEL.orders;
import MODEL.user;
import net.sf.json.JSONObject;

@WebServlet("/OderSearch")
public class OderSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public OderSearch() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		JSONObject jsonobj=new JSONObject();
		try {
			UserDao userDao=new UserDao();
			user u=userDao.CheckIsLogin(request, response);
			
			if(u!=null&&!"".equals(u.toString())) {
				OrderDao orderDao=new OrderDao();
				PrintWriter out=response.getWriter();
				Gson gson=new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
				//保存用户输入的搜索条件
				orders orders=new orders();
				user user=new user();
				Map<String, String[]> parameterMap = request.getParameterMap();
				BeanUtils.populate(orders, parameterMap);
				BeanUtils.populate(user, parameterMap);
				List<Map> orderlist=orderDao.showorderList(orderDao.fatherorderList(orders, user));
				
				String orderJSON=gson.toJson(orders);
				jsonobj.put("code", 0);
				jsonobj.put("msg", "");
				jsonobj.put("count",orderDao.showorderList(orderDao.fatherorderList(orders, user)).size());
				jsonobj.put("data", orderJSON);
				out.println(jsonobj);
				
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

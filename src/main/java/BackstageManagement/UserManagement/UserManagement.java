package BackstageManagement.UserManagement;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.google.gson.Gson;

import DAO.UserDao;
import MODEL.user;
import net.sf.json.JSONObject;


@WebServlet("/UserManagement")
public class UserManagement extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UserManagement() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		JSONObject jsonobj=new JSONObject();

		
		UserDao userDao=new UserDao();
		user u=userDao.CheckIsLogin(request, response);
		
		if(u!=null&&!"".equals(u.toString())) {
			List<user> userlist=new ArrayList<user>();
			Map<String, String[]> parameterMap = request.getParameterMap();
			user user=new user();
			int count=Integer.parseInt(request.getParameter("page"));
			int size=Integer.parseInt(request.getParameter("limit"));
			try {
				BeanUtils.populate(user, parameterMap);
				System.out.println(user);
				userlist=userDao.selectuserpages(user,count,size);
				Gson gson=new Gson();
				PrintWriter outPrintWriter=response.getWriter();
				String userJSON=gson.toJson(userlist);
				jsonobj.put("code", 0);
				jsonobj.put("msg", "");
				jsonobj.put("count",userlist.size());
				jsonobj.put("data", userJSON);
				outPrintWriter.println(jsonobj);

			} catch (IllegalAccessException | InvocationTargetException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}



	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

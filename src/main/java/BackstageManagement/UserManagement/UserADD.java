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

import com.opensymphony.xwork2.util.Element;

import DAO.UserDao;
import MODEL.user;
import net.sf.json.JSONObject;

@WebServlet("/UserADD")
public class UserADD extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserADD() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		JSONObject jsonobj = new JSONObject();
		//验证是否登录
		UserDao userDao = new UserDao();
		user u = userDao.CheckIsLogin(request, response);
		if (u != null && !"".equals(u.toString())) {
			user user = new user();
			Map<String, String[]> paraMap = request.getParameterMap();
			try {
				user tempUser = new user();
				tempUser.setEmail(request.getParameter("email"));
				List<user> tempList = new ArrayList<user>();
				tempList = userDao.selects(tempUser);
				if (tempList.isEmpty()) {
					BeanUtils.populate(user, paraMap);
					userDao.adds(user);
					jsonobj.put("code", "200");
					jsonobj.put("msg", "该用户添加成功");
				} else {
					jsonobj.put("code", "error");
					jsonobj.put("msg", "该用户已存在");
				}
				PrintWriter outPrintWriter = response.getWriter();
				outPrintWriter.println(jsonobj);
			} catch (IllegalAccessException | InvocationTargetException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

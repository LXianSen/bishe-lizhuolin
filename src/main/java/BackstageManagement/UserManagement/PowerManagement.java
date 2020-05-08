package BackstageManagement.UserManagement;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import DAO.UserDao;
import MODEL.user;
import net.sf.json.JSONObject;

@WebServlet("/PowerManagement")
public class PowerManagement extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PowerManagement() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		JSONObject jsonObject = new JSONObject();
		PrintWriter out = response.getWriter();
		//ÑéÖ¤ÊÇ·ñµÇÂ¼
		UserDao userDao = new UserDao();
		user u = userDao.CheckIsLogin(request, response);
		if (u != null && !"".equals(u.toString())) {
			user usernew = new user();
			user userold = new user();
			Map<String, String[]> userMap = request.getParameterMap();
			try {
				BeanUtils.populate(usernew, userMap);
				userold.setUserid(usernew.getUserid());
				userDao.updates(usernew, userold);
				jsonObject.put("code", "200");
				out.println(jsonObject);
			} catch (IllegalAccessException | InvocationTargetException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
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

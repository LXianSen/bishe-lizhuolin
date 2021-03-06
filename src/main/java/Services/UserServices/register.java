package Services.UserServices;

import java.io.Console;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Request;
import org.apache.commons.beanutils.BeanUtils;

import DAO.BaseDAO;
import DAO.UserDao;
import DAO.WalletsDao;
import MODEL.user;
import MODEL.wallets;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public register() {
		super();
	}

//    public boolean checkuser(user u) throws SQLException, Exception {
//    	UserDao dao1=new UserDao();
//    	dao1.adds(u);
//		
//	}

	public boolean adduser(user u) throws SQLException, Exception {
		UserDao dao1 = new UserDao();
		List<user> list = dao1.selects(u);
		if (list.isEmpty()) {
			return true;
		} else {
			return false;
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset =UTF-8");
		UserDao dao1 = new UserDao();
		wallets wallets=new wallets();
		WalletsDao walletsDao=new WalletsDao();
		PrintWriter out = response.getWriter();
		// 实例化json
		JSONObject jsonobj = new JSONObject();
		// JSONArray jsonarray = new JSONArray();
		try {
			Map<String, String[]> parameterMap = request.getParameterMap();
			String type = request.getParameter("type");
			user user = new user();
			BeanUtils.populate(user, parameterMap);
			user.setUserid(request.getParameter("userid"));
			wallets.setuserId(user.getUserid());
			wallets.setName(user.getUsername());
			wallets.setBalance(0);
			// 输入数据的时候判断数据库是否存在该数据
			if (type.equals("select")) {
				if (adduser(user)) {
					jsonobj.put("code", "200");
				} else {
					jsonobj.put("code", "error");
					jsonobj.put("msg", "该用户已存在");
				}
			} else if (type.equals("add")) {
				List<wallets>  list2=walletsDao.adds(wallets);
				List<user> list1 = dao1.adds(user);
				;
				if (!list1.isEmpty()) {
					jsonobj.put("code", "200");
				}
			} else {
				System.out.println("1");
			}
			out.println(jsonobj);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}

package DAO;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;

import MODEL.user;
import net.sf.json.JSONObject;
//继承基类BaseDao，实例化方法
public class UserDao extends BaseDAO<user> {
	
	//检查用户是否登录
	public user CheckIsLogin(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		JSONObject jsonobj=new JSONObject();
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		user user=(user) session.getAttribute("user");
		if (user == null) {
			jsonobj.put("code", "error");
			jsonobj.put("msg", "用户未登录或登录态过期！");
			out.println(jsonobj);
//			response.sendRedirect("login.jsp");
			return null;
		}
		return user;
	}
}

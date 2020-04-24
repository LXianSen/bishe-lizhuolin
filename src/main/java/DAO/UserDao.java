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
//�̳л���BaseDao��ʵ��������
public class UserDao extends BaseDAO<user> {
	
	//����û��Ƿ��¼
	public user CheckIsLogin(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		JSONObject jsonobj=new JSONObject();
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		user user=(user) session.getAttribute("user");
		if (user == null) {
			jsonobj.put("code", "error");
			jsonobj.put("msg", "�û�δ��¼���¼̬���ڣ�");
			out.println(jsonobj);
//			response.sendRedirect("login.jsp");
			return null;
		}
		return user;
	}
}

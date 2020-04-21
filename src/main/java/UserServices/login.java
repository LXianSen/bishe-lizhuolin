package UserServices;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import com.google.gson.Gson;

import DAO.BaseDAO;
import MODEL.user;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import DAO.*;
import java.awt.*;
import java.util.List;
import java.util.Map;
import java.io.*;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public login() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset =UTF-8");
        
		PrintWriter out = response.getWriter();
		JSONObject jsonobj = new JSONObject();
		JSONArray jsonarray = new JSONArray();
		
		user user=new user();
		UserDao dao1=new UserDao();
		Gson gson=new Gson();
            try {
            	Map<String, String[]> parameterMap = request.getParameterMap();
        		BeanUtils.populate(user, parameterMap);
        		
    			String userjson=gson.toJson(user);
        		HttpSession session = request.getSession();
    			List<user> userlist=dao1.selects(user);
    			System.out.println(userlist);
				if(userlist.isEmpty()) {
					
					jsonobj.put("code", "error");
				}else {
					jsonobj.put("code", "200");
					jsonobj.put("user", userlist.get(0));
	        		session.setAttribute("user", userjson);
				}
				out.println(jsonobj);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        out.flush();
        out.close();}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
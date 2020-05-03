package Services.UserServices;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import com.google.gson.Gson;
import com.mysql.fabric.Response;

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
        PrintWriter writer = response.getWriter();
		JSONObject jsonobj = new JSONObject();		
		user user=new user();
		UserDao dao1=new UserDao();


        
            try {
            	Map<String, String[]> parameterMap = request.getParameterMap();
            	if(parameterMap.isEmpty()) {
                    String publicKey = RSAUtils.generateBase64PublicKey();
                    writer.write(publicKey); 
            	}else {
                	//ȡ������user���ݣ��ŵ�user������
            		user.setEmail(RSAUtils.decryptBase64(request.getParameter("email").toString()));
            		user.setPwd(RSAUtils.decryptBase64(request.getParameter("pwd").toString()));
            		HttpSession session = request.getSession();
        			user myuser=new user();
        			if(!dao1.selects(user).isEmpty()) {
        				myuser=dao1.selects(user).get(0);
        			}
    				if(myuser.getUserid()!=null&&!"".equals(myuser.getUserid())) {
    					jsonobj.put("code", "200");
    					jsonobj.put("user", myuser);
    	        		session.setAttribute("user", myuser);
    					
    				}else {
    					
    	        		jsonobj.put("code", "error");
    				}
    				out.println(jsonobj);
				}
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
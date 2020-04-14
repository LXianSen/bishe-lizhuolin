package UserServices;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import DAO.BaseDAO;
import MODEL.user;
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
    
    public boolean check(user u) throws Exception {
		UserDao dao1=new UserDao();
		List<user> user=dao1.selects(u);
			if(user.isEmpty()) {
				return false;
			}else {
				return true;
			}

	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
            try {
            	Map<String, String[]> parameterMap = request.getParameterMap();
        		user user=new user();
        		BeanUtils.populate(user, parameterMap);
        		
        		HttpSession session = request.getSession();
                request.setCharacterEncoding("utf-8");
                response.setContentType("text/html;charset =UTF-8");
                
				if(check(user)) {
					out.print('1');
	        		session.setAttribute("user", user);
					return;
				}else {
					out.print("0");
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
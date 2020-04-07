package Services;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BaseDAO;
import MODEL.user;
import DAO.*;
import java.awt.*;
import java.util.List;
import java.io.*;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public login() {
        super();
    }
    user u=new user();
    public boolean check() throws Exception {
		UserDao dao1=new UserDao();
		List<user> user=dao1.selects(u);
			if(u.getId().equals(user.get(0).getId())&&u.getPwd().equals(user.get(0).getPwd())) {
				return true;
			}else {
				return false;
			}

	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String piccode = (String) request.getSession().getAttribute("piccode");
        String checkcode = request.getParameter("checkcode");
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset =UTF-8");
        u.setName(request.getParameter("username"));
        u.setPwd(request.getParameter("pwd"));
        PrintWriter out = response.getWriter();
        if(checkcode.equals(piccode)){
            try {
				if(check()) {
					request.getRequestDispatcher("/navigate.jsp").forward(request, response);
					return;
				}else {
					out.print("登录失败！");
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }else{
            out.print("验证码输入不正确！");
        }
        out.flush();
        out.close();}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

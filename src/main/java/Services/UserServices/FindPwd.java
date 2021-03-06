package Services.UserServices;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.Random;

import DAO.RandomUtil;
import DAO.UserDao;
import net.sf.json.JSONObject;


@WebServlet("/FindPwd")
public class FindPwd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FindPwd() {
        super();
    }
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String toemail=request.getParameter("email");
		String code=request.getParameter("code");
		JSONObject jsonObject=new JSONObject();
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		UserDao userDao=new UserDao();
        String user = "bishelzl@163.com";
        String password = "LRLBBHSOWSYCEBZI";
        String host = "smtp.163.com";
        String from = "bishelzl@163.com";
        String to = toemail;// 收件人
        String subject = "send a email";
        //邮箱内容
        StringBuffer sb = new StringBuffer();
        String yzm = RandomUtil.getRandomString(6);
        sb.append("<!DOCTYPE>"+"<div bgcolor='#f1fcfa' style='border:1px solid #d9f4ee; font-size:20px; line-height:22px; color:#005aa0;padding-left:1px;padding-top:5px;   padding-bottom:5px;'><span style='font-weight:bold;font-size:30px'>温馨提示：</span>"
                          + "<div style='width:950px;font-family:arial;'>欢迎使用网上书店，您的验证码为：<br/><h2 style='color:green'>"+yzm+"</h2><br/>本邮件由系统自动发出，请勿回复。<br/>感谢您的使用。<br/></div>"
                         +"</div>");
        try {
        	if(toemail != null && !"".equals(toemail)) {
        		session.setAttribute("code", yzm);
        		String res = userDao.sendMail(user, password, host, from, to,
                        subject, sb.toString());
        		System.out.println(res);
        	}else{
        		if(code.equals(session.getAttribute("code"))) {
        			jsonObject.put("code", "200");
        		}else {
        			jsonObject.put("code", "error");
        		}
        		out.println(jsonObject);
        	}
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
	}
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

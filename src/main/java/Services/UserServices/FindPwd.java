package Services.UserServices;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Random;

import DAO.RandomUtil;
import DAO.UserDao;


@WebServlet("/FindPwd")
public class FindPwd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FindPwd() {
        super();
    }
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		UserDao userDao=new UserDao();
        String user = "��������ַ";
        String password = "���������Ȩ��";
        String host = "smtp.163.com";
        String from = "��������ַ";
        String to = "Ŀ�������ַ";// �ռ���
        String subject = "�����ʼ�����";
        //��������
        StringBuffer sb = new StringBuffer();
        String yzm = RandomUtil.getRandomString(6);
        sb.append("<!DOCTYPE>"+"<div bgcolor='#f1fcfa'   style='border:1px solid #d9f4ee; font-size:14px; line-height:22px; color:#005aa0;padding-left:1px;padding-top:5px;   padding-bottom:5px;'><span style='font-weight:bold;'>��ܰ��ʾ��</span>"
                          + "<div style='width:950px;font-family:arial;'>��ӭʹ��NET΢�������ע����Ϊ��<br/><h2 style='color:green'>"+yzm+"</h2><br/>���ʼ���ϵͳ�Զ�����������ظ���<br/>��л����ʹ�á�<br/>���ݶ���������������޹�˾</div>"
                         +"</div>");
        try {
            String res = userDao.sendMail(user, password, host, from, to,
                    subject, sb.toString());
            System.out.println(res);
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

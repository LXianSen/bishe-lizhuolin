package DAO;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;

import java.lang.reflect.Field;
import com.alibaba.druid.sql.visitor.functions.Concat;
import com.opensymphony.xwork2.Result;

import MODEL.MailAuthenticator;
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
			return user;
		}
		return user;
	}
	
	/**
     * �����ʼ�
     * @param user ����������
     * @param password ��Ȩ�루ע�ⲻ�������¼���룩
     * @param host 
     * @param from ������
     * @param to ����������
     * @param subject �ʼ�����
     * @param content �ʼ�����
     * @return success ���ͳɹ� failure ����ʧ��
     * @throws Exception
     */
    public String sendMail(String user, String password, String host,
            String from, String to, String subject, String content)
            throws Exception {
        if (to != null){
            Properties props = System.getProperties();
            props.put("mail.smtp.host", host);
            props.put("mail.smtp.auth", "true");
            MailAuthenticator auth = new MailAuthenticator();
            MailAuthenticator.USERNAME = user;
            MailAuthenticator.PASSWORD = password;
            Session session = Session.getInstance(props, auth);
            session.setDebug(true);
            try {
                MimeMessage message = new MimeMessage(session);
                message.setFrom(new InternetAddress(from));
                if (!to.trim().equals(""))
                    message.addRecipient(Message.RecipientType.TO,
                            new InternetAddress(to.trim()));
                message.setSubject(subject);
                MimeBodyPart mbp1 = new MimeBodyPart(); // ����
                mbp1.setContent(content, "text/html;charset=utf-8");
                Multipart mp = new MimeMultipart(); // �����ʼ�������+����
                mp.addBodyPart(mbp1);
                // mp.addBodyPart(mbp2);
                message.setContent(mp);
                message.setSentDate(new Date());
                message.saveChanges();
                Transport trans = session.getTransport("smtp");
                trans.send(message);
                System.out.println(message.toString());
            } catch (Exception e){
                e.printStackTrace();
                return "failure";
            }
            return "success";
        }else{            
            return "failure";
        }
    }

    
    //ʵ�ַ�ҳ
    public List<user> selectuserpages(user u,int count,int size) throws SQLException, Exception{
    	Connection connection=Druid().getConnection();
    	List<user> userlist=new ArrayList<user>();
    	Field[] fs=u.getClass().getDeclaredFields();
    	List<Object> valuesList=new ArrayList<Object>();
    	StringBuffer sqlString=new StringBuffer("select * from user where 1=1 ");
    	for(Field f:fs) {
    		String nameString=f.getName();
    		f.setAccessible(true);

			// ���ݹ����ķ��Ͷ���t�����Ե�ֵ
			Object value = f.get(u);
			if (value != null && !"".equals(value)) {
				if ((!value.toString().equalsIgnoreCase("0") && !value.toString().equalsIgnoreCase("0.0"))) {
					sqlString.append("and ");
					// ռλ��
					sqlString.append(u.getClass().getSimpleName()).append(".").append(nameString).append("=?");
					valuesList.add(value);
				}
			}
    	}
    	//ʵ�ַ�ҳ
		sqlString.append(" limit ").append((count-1)*size).append(",").append(size);
		System.out.println(sqlString);
    	PreparedStatement ps = connection.prepareStatement(sqlString.toString());
    	  for (int i = 0; i < valuesList.size(); i++)
          {
              ps.setObject(i + 1, valuesList.get(i));
          }
    	  ResultSet rs=ps.executeQuery();
    	   // Ԫ���ݶ���(��������˱�ͷ)
	        ResultSetMetaData rsmd = rs.getMetaData();
	        
	        // �˱�һ���ж�����
	        int columnCount = rsmd.getColumnCount();
    	  while(rs.next()) {
    		     user user=new user();
 	            
 	            for (int i = 1; i <= columnCount; i++)
 	            {
 	                // �����к� ����� ����
 	                String columnName = rsmd.getColumnName(i);
 	                // �������� ����ȡ ��ǰ�е�����
 	                Object value = rs.getObject(columnName);
 	                // �������� ͨ�������������Զ���
 	                Field f = user.getClass().getDeclaredField(columnName);
 	                if (f != null)
 	                {
 	                    f.setAccessible(true);
 	                    f.set(user, value);
 	                }
 	                System.out.println(columnName+": "+value);
 	            }
 	            
 	            userlist.add(user);
    	  }
		return userlist;
    }
}

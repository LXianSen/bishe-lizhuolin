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
			return user;
		}
		return user;
	}
	
	/**
     * 发送邮件
     * @param user 发件人邮箱
     * @param password 授权码（注意不是邮箱登录密码）
     * @param host 
     * @param from 发件人
     * @param to 接收者邮箱
     * @param subject 邮件主题
     * @param content 邮件内容
     * @return success 发送成功 failure 发送失败
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
                MimeBodyPart mbp1 = new MimeBodyPart(); // 正文
                mbp1.setContent(content, "text/html;charset=utf-8");
                Multipart mp = new MimeMultipart(); // 整个邮件：正文+附件
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

    
    //实现分页
    public List<user> selectuserpages(user u,int count,int size) throws SQLException, Exception{
    	Connection connection=Druid().getConnection();
    	List<user> userlist=new ArrayList<user>();
    	Field[] fs=u.getClass().getDeclaredFields();
    	List<Object> valuesList=new ArrayList<Object>();
    	StringBuffer sqlString=new StringBuffer("select * from user where 1=1 ");
    	for(Field f:fs) {
    		String nameString=f.getName();
    		f.setAccessible(true);

			// 传递过来的泛型对象t的属性的值
			Object value = f.get(u);
			if (value != null && !"".equals(value)) {
				if ((!value.toString().equalsIgnoreCase("0") && !value.toString().equalsIgnoreCase("0.0"))) {
					sqlString.append("and ");
					// 占位符
					sqlString.append(u.getClass().getSimpleName()).append(".").append(nameString).append("=?");
					valuesList.add(value);
				}
			}
    	}
    	//实现分页
		sqlString.append(" limit ").append((count-1)*size).append(",").append(size);
		System.out.println(sqlString);
    	PreparedStatement ps = connection.prepareStatement(sqlString.toString());
    	  for (int i = 0; i < valuesList.size(); i++)
          {
              ps.setObject(i + 1, valuesList.get(i));
          }
    	  ResultSet rs=ps.executeQuery();
    	   // 元数据对象(里面包含了表头)
	        ResultSetMetaData rsmd = rs.getMetaData();
	        
	        // 此表一共有多少列
	        int columnCount = rsmd.getColumnCount();
    	  while(rs.next()) {
    		     user user=new user();
 	            
 	            for (int i = 1; i <= columnCount; i++)
 	            {
 	                // 根据列号 来获得 列名
 	                String columnName = rsmd.getColumnName(i);
 	                // 根据列名 来获取 当前列的数据
 	                Object value = rs.getObject(columnName);
 	                // 根据列名 通过反射来找属性对象
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

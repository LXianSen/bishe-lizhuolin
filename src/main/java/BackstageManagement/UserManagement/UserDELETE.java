package BackstageManagement.UserManagement;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import DAO.UserDao;
import MODEL.user;
import net.sf.json.JSONObject;


@WebServlet("/UserDELETE")
public class UserDELETE extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public UserDELETE() {
        super();
    }


    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		JSONObject jsonobj=new JSONObject();

		
		UserDao userDao=new UserDao();
		user u=userDao.CheckIsLogin(request, response);
		
		if(u!=null&&!"".equals(u.toString())) {
			user user=new user();
			Map<String, String[]> paraMap=request.getParameterMap();
			try {
				BeanUtils.populate(user,paraMap);
				userDao.deletes(user);
				
			} catch (IllegalAccessException | InvocationTargetException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

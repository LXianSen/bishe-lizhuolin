package BackstageManagement;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.UserDao;
import MODEL.user;

@WebServlet("/OderManagement")
public class OderManagement extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public OderManagement() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UserDao userDao=new UserDao();
		user u=userDao.CheckIsLogin(request, response);
		
		if(u!=null&&"".equals(u.toString())) {
			
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}

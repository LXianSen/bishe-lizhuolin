package Services.CollectionServices;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UserDao;
import MODEL.user;


@WebServlet("/AddCollections")
public class AddCollections extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AddCollections() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset =UTF-8");
		
		UserDao userDao=new UserDao();

		user u=userDao.CheckIsLogin(request, response);

		if(u!=null&&"".equals(u.toString())) {
			
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

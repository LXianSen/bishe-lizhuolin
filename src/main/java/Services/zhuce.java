package Services;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import DAO.BaseDAO;
import DAO.UserDao;
import MODEL.user;


@WebServlet("/zhuce")
public class zhuce extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public zhuce() {
        super();
    }
    user u=new user();
    public boolean addUser() throws SQLException, Exception {
    	UserDao dao1=new UserDao();
    	List<user> list=dao1.selects(u);
		if(list==null) {
			dao1.adds(u);
			return true;
		}else {
			return false;
		}
		
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset =UTF-8");
		try {
			Map<String, String[]> parameterMap = request.getParameterMap();
			user user=new user();
			BeanUtils.populate(user, parameterMap);
			String [] items = request.getParameterValues("items");
			StringBuffer buffer = new StringBuffer();
			for(String t : items){
				buffer.append(t+",");
			}
			String ids = buffer.substring(0, buffer.length()-1);
			user.setId(ids);
			if(addUser()) {
				request.getRequestDispatcher("login.jsp").forward(request, response);
				return;
			}else {
				response.setContentType("text/html;charset=utf-8");
				response.getWriter().write("×¢²áÊ§°Ü£¡");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}

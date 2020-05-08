package BackstageManagement.BookManagement;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import DAO.BkTypeDao;
import DAO.BookDao;
import DAO.UserDao;
import MODEL.book;
import MODEL.booktype;
import MODEL.user;
import net.sf.json.JSONObject;

@WebServlet("/GetAllSontypes")
public class GetAllSontypes extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public GetAllSontypes() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			JSONObject jsonobj = new JSONObject();
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=UTF-8");
			//ÑéÖ¤ÊÇ·ñµÇÂ¼
			UserDao userDao = new UserDao();
			user u = userDao.CheckIsLogin(request, response);
			if (u != null && !"".equals(u.toString())) {
				book book = new book();
				BkTypeDao bktypeDao = new BkTypeDao();
				List<String> typeList = new ArrayList<String>();
				typeList = bktypeDao.getsontypes();
				Gson gson = new Gson();
				PrintWriter outPrintWriter = response.getWriter();
				String typeJSON = gson.toJson(typeList);
				outPrintWriter.println(typeJSON);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package pages;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import DAO.BkTypeDao;
import DAO.BookDao;
import MODEL.Booktype;
import MODEL.user;


/**
 * Servlet implementation class HomePage
 */
@WebServlet("/HomePage")
public class HomePage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HomePage() {
        super();
    }
    
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 		try {
 			
			HttpSession session=request.getSession();
			user user=(user) session.getAttribute("user");
			BkTypeDao bktypeDao=new BkTypeDao();
			Booktype types=new Booktype();
			List<Booktype> bktypeList=bktypeDao.selects(types);
			Gson gson=new Gson();
			String jsonString=gson.toJson(bktypeList);
			request.setAttribute("bktypelist", jsonString);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.getRequestDispatcher("......").forward(request, response);
	}
	
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

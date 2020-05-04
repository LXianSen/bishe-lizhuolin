package BackstageManagement.BookManagement;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import DAO.BookDao;
import DAO.UserDao;
import MODEL.book;
import MODEL.user;
import net.sf.json.JSONObject;


@WebServlet("/BooksShow")
public class BooksShow extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
    public BooksShow() {
        super();
    }


    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=UTF-8");
			
			UserDao userDao=new UserDao();
			user u=userDao.CheckIsLogin(request, response);
			
			if(u!=null&&!"".equals(u.toString())) {
				JSONObject jsonobj=new JSONObject();
				BookDao bkDao=new BookDao();
				List<book>	booklist=new ArrayList<book>();
				List<book> tempList=new ArrayList<book>();
				book book=new book();
				BeanUtils.populate(book, request.getParameterMap());
				int count=Integer.parseInt(request.getParameter("page"));
				int size=Integer.parseInt(request.getParameter("limit"));
				booklist=bkDao.selectbookpages(book, count, size);
				Gson gson=new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
				PrintWriter outPrintWriter=response.getWriter();
				String userJSON=gson.toJson(booklist);
				tempList=bkDao.selects(book);
				jsonobj.put("code", 0);
				jsonobj.put("msg", "");
				jsonobj.put("count",tempList.size());
				jsonobj.put("data", userJSON);
				outPrintWriter.println(jsonobj);
				}
			}catch (IllegalAccessException | InvocationTargetException e) {
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



	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

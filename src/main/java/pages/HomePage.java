package pages;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.dbutils.handlers.MapListHandler;

import com.google.gson.Gson;

import DAO.BkTypeDao;
import DAO.BookDao;
import MODEL.book;
import MODEL.booktype;
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
 			
			BkTypeDao bktypeDao=new BkTypeDao();
			booktype types=new booktype();
			//获取目录信息
			List<Map<String, Object>> typesList=bktypeDao.getSontypesbyFather();
			System.out.println(typesList);
			request.setAttribute("typeslist", typesList);
			//点击目录跳转
			BookDao bkDao=new BookDao();
			book book=new book();
			book.setsontype(request.getParameter("name"));
			List<book> books=bkDao.selects(book);
			request.setAttribute("books", books);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.getRequestDispatcher("......").forward(request, response);
	}
	
	
	
	/*
	 [ //list<map>
		 {//map(string,list<map>)
		 father1:"aa",
		 sonlist:[      //map<string,object>
		 						{son1:"s1",
		 						son2:"s2"},
		 						{...................}
		 					  ] 				 
		 },
		 
		 {father2:"bb"},{sonlist:[{son1:**,son2:***}]}, 
		 ..... 
	 ]
	 */
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

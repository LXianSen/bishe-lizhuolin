package pages.HomePage;

import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet("/BookTypeShow")
public class BookTypeShow extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BookTypeShow() {
        super();
    }
    
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset =UTF-8");
 		try {
 			
 			PrintWriter outlist=response.getWriter();
 			PrintWriter outbooks=response.getWriter();
			BkTypeDao bktypeDao=new BkTypeDao();
			booktype types=new booktype();
			Gson gson=new Gson();

			
			//获取目录信息
			List<Map<String, Object>> typesList=bktypeDao.getSontypesbyFather();
			String listjson=gson.toJson(typesList);
			outlist.println(listjson);
			
			//点击目录跳转
			String typename=request.getParameter("typename");
			if(typename!=null&&!"".equals(typename)) {
			BookDao bkDao=new BookDao();
			book book=new book();
			book.setSontype(typename);
			List<book> books=bkDao.selects(book);
			String bookJSON=gson.toJson(books);
			outbooks.println(bookJSON);
			} 
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
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

package pages;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import com.alibaba.druid.util.StringUtils;
import com.google.gson.Gson;

import DAO.BookDao;
import MODEL.book;
import MODEL.user;


@WebServlet("/BookDetail")
public class BookDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public BookDetail() {
        super();
    }
    
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset =UTF-8");
		try {
			book book=new book();
			book.setISBN(request.getParameter("isbn"));
			BookDao bkDao=new BookDao();
			List<book> bkList=bkDao.selects(book);
			System.out.println(bkList);
			//转化为 key value形式
			Gson gson=new Gson();
			String bookjson=gson.toJson(bkList);
			out.println(bookjson);
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

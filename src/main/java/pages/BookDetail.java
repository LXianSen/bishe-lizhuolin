package pages;

import java.io.IOException;
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

import com.google.gson.Gson;

import DAO.BookDao;
import MODEL.book;


@WebServlet("/BookDetail")
public class BookDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public BookDetail() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		
			HttpSession session=request.getSession();
			book book=new book();
			book.setISBN(request.getParameter("isbn"));
			BookDao bkDao=new BookDao();
			List<book> bkList=bkDao.selects(book);
			
			//转化为 key value形式
			Gson gson=new Gson();
			String bookjson=gson.toJson(bkList);
			request.setAttribute("book", bookjson);
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

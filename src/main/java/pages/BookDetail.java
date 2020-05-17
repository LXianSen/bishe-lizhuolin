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
import com.google.gson.GsonBuilder;

import DAO.BaseDAO;
import DAO.BookDao;
import DAO.StockDao;
import MODEL.book;
import MODEL.stock;
import MODEL.user;


@WebServlet("/BookDetail")
public class BookDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public BookDetail() {
        super();
    }
    
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
//		PrintWriter out2=response.getWriter();
		try {
			StockDao stockDao=new StockDao();
			stock stock=new stock();
			stock.setISBN(request.getParameter("isbn"));
			book book=new book();
			book.setISBN(request.getParameter("isbn"));
			BookDao bkDao=new BookDao();
			List<book> bkList=bkDao.selects(book);
			System.out.println(bkList);
			//转化为 key value形式
			Gson gson=new GsonBuilder().serializeNulls().setDateFormat("yyyy-MM-dd").create();
			String bookjson=gson.toJson(bkList);
			String stockString=gson.toJson(stock.getStock());
			out.println(bookjson);
//			out2.println(stockString);
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

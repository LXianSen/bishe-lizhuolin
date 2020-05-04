package pages;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.sun.crypto.provider.RSACipher;

import DAO.BookDao;
import MODEL.book;
import net.sf.json.JSONObject;


@WebServlet("/Search")
public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Search() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		JSONObject jsonObject=new JSONObject();
		try {
			BookDao bkDao=new BookDao();
			Gson gson=new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
			PrintWriter out=response.getWriter();
			String inputmsg=(String)request.getParameter("inputmsg");
			List<book> books=bkDao.getBookNoClear(inputmsg);
			if(books.isEmpty()) {
				jsonObject.put("code", "500");
				jsonObject.put("msg", "没有搜索到相关书籍");
				
			}else {
				String booksJSON=gson.toJson(books);
				jsonObject.put("code", "200");
				jsonObject.put("data", booksJSON);
			}
			out.println(jsonObject);
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

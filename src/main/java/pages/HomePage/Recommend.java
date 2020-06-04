package pages.HomePage;

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
import com.google.gson.GsonBuilder;

import DAO.BookDao;
import DAO.StockDao;
import DAO.UserDao;
import MODEL.book;
import MODEL.orders;
import MODEL.stock;
import MODEL.user;
import net.sf.json.JSONObject;


@WebServlet("/Recommend")
public class Recommend extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Recommend() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset =UTF-8");
		PrintWriter o = response.getWriter();
		try {
			BookDao bookDao=new BookDao();
			book book=new book();
			UserDao userDao = new UserDao();
			user u = userDao.CheckIsLogin(request, response);
			if (u != null && !"".equals(u.toString())) {
				if ((!"".equals(u.getLastview()))&&u.getLastview()!=null) {
					book.setISBN(u.getLastview());
					String sontypeString=bookDao.selects(book).get(0).getSontype();
					stock stock=new stock();
					stock.setSontype(sontypeString);
					StockDao stockDao=new StockDao();
					List<stock> stocks=new ArrayList<stock>();
					stocks=stockDao.selectdesc(stock);
					List<book> books=new ArrayList<book>();
					for (int i = 0; i < stocks.size(); i++) {
						book tempBook=new book();
						tempBook.setISBN(stocks.get(i).getISBN());
						books.add(bookDao.selects(tempBook).get(0));
					}
					Gson gson=new GsonBuilder().setDateFormat("yyyy-MM-dd").serializeNulls().create();
					
					String newbookJSON = gson.toJson(books);
					newbookJSON = newbookJSON.replaceAll("null", "\"\"");
					o.println(newbookJSON);
				}else {
					JSONObject jsonObject=new JSONObject();
					jsonObject.put("code", "504");
					jsonObject.put("msg", "目前暂无推荐");
					o.println(jsonObject);
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

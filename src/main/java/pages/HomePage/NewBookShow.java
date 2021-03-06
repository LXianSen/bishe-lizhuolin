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
import MODEL.book;

@WebServlet("/NewBookShow")
public class NewBookShow extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public NewBookShow() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset =UTF-8");
		try {
			BookDao bkDao = new BookDao();
			List<book> newbookList = bkDao.selectnewBooks();
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").serializeNulls().create();
			PrintWriter o = response.getWriter();
			String newbookJSON = gson.toJson(newbookList);
			newbookJSON = newbookJSON.replaceAll("null", "\"\"");
			o.println(newbookJSON);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

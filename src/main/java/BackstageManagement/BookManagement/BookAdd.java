package BackstageManagement.BookManagement;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import DAO.BookDao;
import DAO.UserDao;
import MODEL.book;
import MODEL.user;
import net.sf.json.JSONObject;

@WebServlet("/BookAdd")
public class BookAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BookAdd() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			JSONObject jsonobj = new JSONObject();
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=UTF-8");
			//验证是否登录
			UserDao userDao = new UserDao();
			user u = userDao.CheckIsLogin(request, response);
			if (u != null && !"".equals(u.toString())) {
				BookDao bkDao = new BookDao();
				List<book> tempList = new ArrayList<book>();
				book book = new book();
				BeanUtils.populate(book, request.getParameterMap());
				book tempBook = new book();
				tempBook.setISBN(book.getISBN());
				tempList = bkDao.selects(tempBook);
				if (tempList.isEmpty()) {
					bkDao.adds(book);
					jsonobj.put("code", "200");
					jsonobj.put("msg", "书籍添加成功");
				} else {
					jsonobj.put("code", "error");
					jsonobj.put("msg", "该书籍已存在");
				}
				PrintWriter outPrintWriter = response.getWriter();
				outPrintWriter.println(jsonobj);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package BackstageManagement.SalesManagement;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.StockDao;
import DAO.UserDao;
import MODEL.book;
import MODEL.stock;
import MODEL.user;


@WebServlet("/StockUpdate")
public class StockUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public StockUpdate() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		UserDao userDao=new UserDao();
		user u=userDao.CheckIsLogin(request,response);
		if (u!=null&&!"".equals(u.toString())) {
			StockDao stockDao=new StockDao();
			stock oldStock=new stock();
			stock newStock=new stock();
			oldStock.setISBN(request.getParameter("isbn"));
			try {
				Timestamp oldtime=stockDao.selects(oldStock).get(0).getTime();
				if (Integer.parseInt(request.getParameter("stock"))>0) {
					newStock.setStock(Integer.parseInt(request.getParameter("stock")));
					oldStock.setTime(oldtime);
					Date date=new Date();
					//防止ABA问题
					Timestamp nowTime=new Timestamp(date.getTime());
					newStock.setTime(nowTime);
					stockDao.updates(newStock, oldStock);
				}else {
					PrintWriter oPrintWriter=response.getWriter();
					oPrintWriter.println("不能设置库存为负数");
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

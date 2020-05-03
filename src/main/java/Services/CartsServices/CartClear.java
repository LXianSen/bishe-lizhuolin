package Services.CartsServices;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.CartDao;
import DAO.UserDao;
import MODEL.cartitem;
import MODEL.user;


@WebServlet("/CartClear")
public class CartClear extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public CartClear() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset =UTF-8");
			//检查用户是否登录
			UserDao userDao=new UserDao();

			user u=userDao.CheckIsLogin(request, response);

			if(u!=null&&"".equals(u.toString())) {
			
			//从session获取用户id，用于清空购物车
			CartDao cartDao=new CartDao();
			cartitem cartitem=new cartitem();
			cartitem.setUserid(u.getUserid());
				cartDao.deletes(cartitem);
			} 
			}	catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			response.sendRedirect("ShowCartlist");
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package CartsandOrders;

import static org.junit.jupiter.api.Assertions.assertAll;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.CartDao;
import MODEL.cart;
import MODEL.cartitem;
import MODEL.user;


@WebServlet("/ShowCartlist")
public class ShowCartlist extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ShowCartlist() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		CartDao cartDao = new CartDao();
		HttpSession session = request.getSession();
		user user=(user) session.getAttribute("user");
		cart cart =new cart();
		Map<Integer, cartitem> tempMap=new HashMap<Integer, cartitem>();
		//购物车原价总价、折扣价总价
		double money1=0,money2=0;
		cartitem cartitem=new cartitem();
		cartitem.setuserId(user.getuserId());
		try {
			List<cartitem> list = cartDao.selects(cartitem);
			for (int i = 0; i < list.size(); i++) {
				tempMap.put(i, list.get(i));
				money1+=cartDao.getsumPrice(list.get(i));
				money2+=cartDao.getsumdiscountPrice(list.get(i));
			}
			cart.setCarMap(tempMap);
			cart.setFinalprice(money1);
			cart.setFinaldiscountprice(money2);
			out.print(cart);
		}  catch (Exception e) {
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

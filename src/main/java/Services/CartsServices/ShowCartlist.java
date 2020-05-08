package Services.CartsServices;

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

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import DAO.CartDao;
import DAO.UserDao;
import MODEL.cart;
import MODEL.cartitem;
import MODEL.user;
import net.sf.json.JSONObject;

@WebServlet("/ShowCartlist")
public class ShowCartlist extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ShowCartlist() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset =UTF-8");
			// 检查用户是否登录
			UserDao userDao = new UserDao();
			user u = userDao.CheckIsLogin(request, response);
			if (u != null && !"".equals(u)) {
				Gson gsoncart = new GsonBuilder().serializeNulls().create();
				CartDao cartDao = new CartDao();
				cart cart = new cart();
				PrintWriter o = response.getWriter();
				Map<Integer, Map> tempMap = new HashMap<Integer, Map>();
				// 购物车原价总价、折扣价总价
				double money1 = 0, money2 = 0;
				cartitem cartitem = new cartitem();
				cartitem.setUserid(u.getUserid());
				String useridString = u.getUserid();
				List<Map> list = cartDao.showcartitems(cartitem, useridString);
				for (int i = 0; i < list.size(); i++) {
					tempMap.put(i, list.get(i));
					money1 += cartDao.getsumPrice(list.get(i));
					money2 += cartDao.getsumdiscountPrice(list.get(i));
				}
				cart.setCarMap(tempMap);
				cart.setFinalprice(money1);
				cart.setFinaldiscountprice(money2);
				String jsoncart = gsoncart.toJson(cart);
				jsoncart = jsoncart.replaceAll("null", "\"\"");
				System.out.println(gsoncart.toJson(cart));
				o.println(jsoncart);
			}
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

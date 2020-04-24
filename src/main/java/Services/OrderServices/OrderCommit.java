package Services.OrderServices;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import com.google.gson.Gson;

import DAO.UserDao;
import MODEL.book;
import MODEL.cartitem;
import MODEL.order;
import MODEL.user;
import net.sf.json.JSONObject;


@WebServlet("/OrderCommit")
public class OrderCommit extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public OrderCommit() {
        super();
    }
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset =UTF-8");
			UserDao userDao = new UserDao();
			userDao.CheckIsLogin(request, response);

			user u = userDao.CheckIsLogin(request, response);

			if (u != null && "".equals(u.toString())) {
				PrintWriter o=response.getWriter();
				Gson gson=new Gson();
				
				order tempOrder=new order();
				tempOrder.setUserid(u.getuserId());
				
				// 直接购买？购物车处购买？
				String ordertype = request.getParameter("type");
				if (ordertype == "cart") {
					Map<String, String[]> cartitemMap = request.getParameterMap();
					BeanUtils.populate(tempOrder, cartitemMap);
					String orderJSON=gson.toJson(tempOrder);
					o.println(orderJSON);
					
				} else if (ordertype == "book") {
					Map<String, String[]> bookMap=request.getParameterMap();
					BeanUtils.populate(tempOrder, bookMap);
					String bookJSON=gson.toJson(tempOrder);
					o.println(bookJSON);
					
				}

			}
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}



	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package Services.OrderServices;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import com.google.gson.Gson;

import DAO.AddressDao;
import DAO.UserDao;
import MODEL.address;
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
//			userDao.CheckIsLogin(request, response);

			user u = userDao.CheckIsLogin(request, response);

			if (u != null && !"".equals(u.toString())) {

				AddressDao addressDao=new AddressDao();
				address address=new address();
				address.setUserid(u.getuserId());
				List<address>addressList=addressDao.selects(address);
				PrintWriter out=response.getWriter();
				Gson gson=new Gson();
				String addressjson = gson.toJson(addressList);
				out.println(addressjson);
			}
		}catch (Exception e) {
			// TODO: handle exception
		}
	}



	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

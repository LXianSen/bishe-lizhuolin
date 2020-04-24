package pages;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import DAO.AddressDao;
import DAO.OrderDao;
import DAO.UserDao;
import MODEL.address;
import MODEL.order;
import MODEL.user;


@WebServlet("/MyInfomation")
public class MyInfomation extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public MyInfomation() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset =UTF-8");
		try {
	
			HttpSession session=request.getSession();
			user user=(user)session.getAttribute("user");
			PrintWriter o=response.getWriter();
			Gson gson=new Gson();
			
			String msg=request.getParameter("msg");
			if (msg.equals("order ")) {
				OrderDao orderDao=new OrderDao();
				order order=new order();
				order.setUserid(user.getuserId());
				
				List<order> orderList=orderDao.selects(order);
				String orderJSON=gson.toJson(orderList);
				o.println(orderJSON);
			}else if (msg.equals("address")) {
				AddressDao addressDao=new AddressDao();
				address address=new address();
				address.setUserid(user.getuserId());
				List<address>addressList=addressDao.selects(address);
				String addressJSON=gson.toJson(addressList);
				o.println(addressJSON);
			}
			
			} 
			catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	}


	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

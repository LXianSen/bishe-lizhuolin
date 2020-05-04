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
import com.google.gson.GsonBuilder;

import DAO.AddressDao;
import DAO.CollectionDao;
import DAO.OrderDao;
import DAO.UserDao;
import DAO.WalletsDao;
import MODEL.address;
import MODEL.collection;
import MODEL.orders;
import MODEL.user;
import MODEL.wallets;
import net.sf.json.JSONObject;


@WebServlet("/MyInfomation")
public class MyInfomation extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public MyInfomation() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=UTF-8");
			JSONObject jsonobj=new JSONObject();
	
			
			UserDao userDao=new UserDao();
			user u=userDao.CheckIsLogin(request, response);
			
			if(u!=null&&!"".equals(u.toString())) {

			PrintWriter o=response.getWriter();
			Gson gson=new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
			
			String msg=request.getParameter("msg");
			if (msg.equals("orders")) {
				OrderDao orderDao=new OrderDao();
				orders orders=new orders();
				orders.setUserid(u.getUserid());
				
				List<orders> orderList=orderDao.selects(orders);
				String orderJSON=gson.toJson(orderList);
				o.println(orderJSON);
			}else if (msg.equals("address")) {
				AddressDao addressDao=new AddressDao();
				address address=new address();
				address.setUserid(u.getUserid());
				List<address>addressList=addressDao.selects(address);
				String addressJSON=gson.toJson(addressList);
				o.println(addressJSON);
			}else if (msg.equals("wallets")) {
				WalletsDao walletsDao=new WalletsDao();
				wallets myWallets=new wallets();
				myWallets.setuserId(u.getUserid());
				List<wallets>walletList=walletsDao.selects(myWallets);
				String	walletsJSON=gson.toJson(walletList);
				o.println(walletsJSON);
			}else if (msg.equals("collection")) {
				CollectionDao collectionDao=new CollectionDao();
				collection collection=new collection();
				collection.setUserid(u.getUserid());
				List<collection>collectionList=collectionDao.selects(collection);
				String	collectionJSON=gson.toJson(collectionList);
				o.println(collectionJSON);

			
			}
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

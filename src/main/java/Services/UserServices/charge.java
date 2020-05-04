package Services.UserServices;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import DAO.UserDao;
import DAO.WalletsDao;
import MODEL.orders;
import MODEL.user;
import MODEL.wallets;
import net.sf.json.JSONObject;


@WebServlet("/charge")
public class charge extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public charge() {
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
				HttpSession session=request.getSession();
				WalletsDao walletsDao=new WalletsDao();
				//保存用户信息，用于查询
				wallets tempWallets=new wallets();
				//保存个人钱包信息
				wallets myWallets=new wallets();
				tempWallets.setuserId(u.getUserid());
				List<wallets> walletlist=new ArrayList<wallets>();
				walletlist=walletsDao.selects(tempWallets);
				myWallets=walletlist.get(0);
				//订单总价
				double totalprice=Integer.parseInt(request.getParameter("totalmoney"));
				if (totalprice>myWallets.getBalance()) {
					jsonobj.put("code", "error");
					jsonobj.put("msg", "余额不足");
				}else if (totalprice<=myWallets.getBalance()) {
					wallets newWallets=new wallets();
					newWallets.setBalance(myWallets.getBalance()-totalprice);
					walletsDao.updates(newWallets, myWallets);
					jsonobj.put("code", "200");
					jsonobj.put("msg", "支付成功");
				}
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

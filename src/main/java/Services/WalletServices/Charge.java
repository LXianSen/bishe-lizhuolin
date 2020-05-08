package Services.WalletServices;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import DAO.UserDao;
import DAO.WalletsDao;
import MODEL.user;
import MODEL.wallets;


@WebServlet("/Charge")
public class Charge extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Charge() {
        super();
    }


    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("text/html;charset=UTF-8");
		UserDao userDao = new UserDao();
		user u = userDao.CheckIsLogin(request, response);
		if (u != null && !"".equals(u.toString())) {
			wallets oldWallets = new wallets();
			wallets newWallets = new wallets();
			newWallets.setBalance(Double.parseDouble(request.getParameter("balance")));
			oldWallets.setuserId(u.getUserid());
			WalletsDao walletsDao = new WalletsDao();
			try {
				walletsDao.updates(newWallets, oldWallets);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}



	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

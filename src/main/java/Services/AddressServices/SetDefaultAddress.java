package Services.AddressServices;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.AddressDao;
import DAO.UserDao;
import MODEL.address;
import MODEL.user;


@WebServlet("/SetDefaultAddress")
public class SetDefaultAddress extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public SetDefaultAddress() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset =UTF-8");

			UserDao userDao=new UserDao();

			user u=userDao.CheckIsLogin(request, response);

			if(u!=null&&"".equals(u.toString())) {
			AddressDao addressDao=new AddressDao();
			address oldAddress=new address();
			address newAddress=new address();
			//将该用户默认地址重置
			address tempAddress=new address();
			tempAddress.setUserid(u.getUserid());
			addressDao.resetdefaultaddress(tempAddress);
			
			oldAddress.setAddressid(request.getParameter("addressid"));
			newAddress.setIsdefault(request.getParameter("isdefault"));
			addressDao.updates(newAddress, oldAddress);
			PrintWriter out =response.getWriter();
			out.println("ok");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

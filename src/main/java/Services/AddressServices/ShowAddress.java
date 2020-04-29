package Services.AddressServices;

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
import DAO.UserDao;
import MODEL.address;
import MODEL.user;
import net.sf.json.JSONObject;


@WebServlet("/ShowAddress")
public class ShowAddress extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ShowAddress() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset =UTF-8");
			AddressDao addressDao=new AddressDao();
			Gson gson=new Gson();
			address myAddress=new address();
			
			//检查用户是否登录
			UserDao userDao=new UserDao();
			user u=userDao.CheckIsLogin(request, response);

			if(u!=null&&"".equals(u.toString())) {
				myAddress.setUserid(u.getuserId());
				List<address> addresslist=addressDao.selects(myAddress);
				String addressJSON=gson.toJson(addresslist);
				PrintWriter o=response.getWriter();
				o.println(addressJSON);
				} 
			}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

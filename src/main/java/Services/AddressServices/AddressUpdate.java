package Services.AddressServices;

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

import DAO.AddressDao;
import DAO.UserDao;
import MODEL.address;
import MODEL.user;
import net.sf.json.JSONObject;

@WebServlet("/AddressUpdate")
public class AddressUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AddressUpdate() {
        super();
    }
	/**
	 *
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset =UTF-8");

			UserDao userDao=new UserDao();

			user u=userDao.CheckIsLogin(request, response);

			if(u!=null&&!"".equals(u.toString())) {
				AddressDao addressDao=new AddressDao();
				address newAddress=new address();
				address oldAddress=new address();
				Map<String, String[]> addressMap=request.getParameterMap();
				BeanUtils.populate(newAddress, addressMap);
				//获取旧信息的地址id
				//oldAddress.setAddressid(Integer.parseInt(addressMap.get("addressid").toString()));
				oldAddress.setAddressid(request.getParameter("addressid"));
				addressDao.updates(newAddress, oldAddress);
				
				}
			} catch (IllegalAccessException | InvocationTargetException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
			} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
			}

			
	}
	
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

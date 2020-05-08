package Services.AddressServices;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.Map;
import java.util.UUID;

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

@WebServlet("/addressadd")
public class AddressAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddressAdd() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset =UTF-8");
			//ÑéÖ¤ÊÇ·ñµÇÂ¼
			UserDao userDao = new UserDao();
			user u = userDao.CheckIsLogin(request, response);
			if (u != null && !"".equals(u.toString())) {
				address address = new address();
				AddressDao addressDao = new AddressDao();
				Map<String, String[]> addressMap = request.getParameterMap();
				BeanUtils.populate(address, addressMap);
				address.setUserid(u.getUserid());
				UUID uuid = UUID.randomUUID();
				String addressidString = uuid.toString().replace("-", "");
				address.setAddressid(addressidString);
				addressDao.adds(address);
			}
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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

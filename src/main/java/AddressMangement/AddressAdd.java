package AddressMangement;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import DAO.AddressDao;
import MODEL.address;
import MODEL.user;
import net.sf.json.JSONObject;

@WebServlet("/addressadd")
public class AddressAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AddressAdd() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		JSONObject jsonobj=new JSONObject();
		PrintWriter out=response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset =UTF-8");
		HttpSession session=request.getSession();
		user user=(user) session.getAttribute("user");
		if (user == null) {
			jsonobj.put("code", "error");
			jsonobj.put("msg", "用户未登录或登录态过期！");
			out.println(jsonobj);
//			response.sendRedirect("login.jsp");
			return;
		}
		
		//需要判重吗？判重有必要吗？......
		

		//获取表单所有数据并添加到数据库
		address address=new address();
		AddressDao addressDao=new AddressDao();
		Map<String, String[]>addressMap=request.getParameterMap();
		BeanUtils.populate(address, addressMap);
		addressDao.adds(address);
		
		
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

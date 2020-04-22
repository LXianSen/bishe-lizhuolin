package CartsandOrders;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import DAO.BaseDAO;
import DAO.BookDao;
import MODEL.order;
import MODEL.user;
import net.sf.json.JSONObject;


@WebServlet("/MyOrderList")
public class ShowOrderList extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ShowOrderList() {
        super();
    }
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			JSONObject jsonobj = new JSONObject();
			PrintWriter out=response.getWriter();
			HttpSession session=request.getSession();
			//判断用户是否登录
			user user = (user) session.getAttribute("user");
			if (user == null) {
				jsonobj.put("code", "error");
				jsonobj.put("msg", "用户未登录或登录态过期！");
				out.println(jsonobj);
//				response.sendRedirect("login.jsp");
				return;
			}
			BaseDAO<order> bkDao=new BaseDAO<order>();
			order order=new order();
			order.setUserid(user.getuserId().toString());
			List<order> orderlists=bkDao.selects(order);
			request.setAttribute("myorders", orderlists);
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

package Services.OrderServices;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import DAO.OrderDao;
import DAO.StockDao;
import DAO.UserDao;
import MODEL.orders;
import MODEL.stock;
import MODEL.user;
import com.alibaba.fastjson.JSONObject;

@WebServlet("/OrderAdd")
public class OrderAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public OrderAdd() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset =UTF-8");
			//��֤�Ƿ��¼
			UserDao userDao = new UserDao();
			user u = userDao.CheckIsLogin(request, response);
			if (u != null && !"".equals(u.toString())) {
				System.out.println(u);
				OrderDao orderDao = new OrderDao();
				String orderlist = request.getParameter("orderlist");
				List<orders> orderList = JSONObject.parseArray(orderlist, orders.class);
				System.out.println("orderlist  " + orderlist);
				// ��ȡ��ǰʱ�� 
				Date date = new Date();
				Timestamp ctime = new Timestamp(date.getTime());
				for (int i = 0; i < orderList.size(); i++) {
					orderList.get(i).setAddressid(request.getParameter("addressid"));
					orderList.get(i).setDate(ctime);
					//�������ƣ���ֹABA
					StockDao stockDao=new StockDao();
					stock oldbookStock=new stock();
					stock newbookStock=new stock();
					oldbookStock.setISBN(orderList.get(i).getISBN());
					//��ѯ���ݿ��ϴο���޸�ʱ��Ϳ����
					Timestamp time=stockDao.selects(oldbookStock).get(0).getTime();
					oldbookStock.setTime(time);
					long oldcount=stockDao.selects(oldbookStock).get(0).getStock();
					if(oldcount>orderList.get(i).getCount()) {
					//�����¿��Ϳ���޸�ʱ��
					newbookStock.setStock(oldcount-orderList.get(i).getCount());
					newbookStock.setTime(ctime);
					//�޸Ŀ���ʱ������ϴο���޸�ʱ���Ƿ��Ӧ       set stock=�¿��,time=��ʱ��  where isbn=? and time=�ϴβ�ѯ����ʱ��
					stockDao.updates(newbookStock, oldbookStock);
					orderDao.adds(orderList.get(i));
					}else {
						PrintWriter oPrintWriter=response.getWriter();
						oPrintWriter.println("��治�㣬������");
					}
				}
			}
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

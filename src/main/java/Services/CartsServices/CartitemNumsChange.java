package Services.CartsServices;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.BookDao;
import DAO.CartDao;
import DAO.UserDao;
import MODEL.cartitem;
import MODEL.user;
import net.sf.json.JSONObject;

@WebServlet("/CartAdd")
public class CartitemNumsChange extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public CartitemNumsChange() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset =UTF-8");
			
			UserDao userDao=new UserDao();
			
			user u=userDao.CheckIsLogin(request, response);

			if(u!=null&&!"".equals(u.toString())) {
				CartDao cartDao = new CartDao();
				//��ѯ�û���Ӧ���鼮�Ƿ���ڹ��ﳵ
				cartitem cartitem=new cartitem();
				cartitem.setISBN(request.getParameter("isbn").toString());
				cartitem.setUserid(u.getUserid());
				List<cartitem> cartitemlist= cartDao.selects(cartitem);
				//����û����ﳵ���ڸù��������������+count�������½�һ�����������Ϊcount
				if (cartitemlist.isEmpty()) {
					cartitem.setCount(Integer.parseInt(request.getParameter("count")));	
					cartDao.adds(cartitem);
				} else {
					cartitem.setCount(cartitemlist.get(0).getCount());
					cartitem cartitem2=new cartitem();
					//��������/��������
					if(request.getParameter("type").equals("minus")) {
						cartitem2.setCount(cartitem.getCount()-Integer.parseInt(request.getParameter("count")));
					}else {
						cartitem2.setCount(cartitem.getCount()+Integer.parseInt(request.getParameter("count")));
					}
					
					System.out.println(cartitem2.getCount());
					//set   ...count=newcount  where=....
						cartDao.updates(cartitem2, cartitem);
					}
				} 
				}catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
	//		response.sendRedirect("ShowCartlist");
	}
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package BackstageManagement.TypeManagement;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import DAO.BkTypeDao;
import DAO.BookDao;
import DAO.UserDao;
import MODEL.book;
import MODEL.booktype;
import MODEL.user;
import net.sf.json.JSONObject;


@WebServlet("/TypeDelete")
public class TypeDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public TypeDelete() {
        super();
    }



    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		JSONObject jsonobj=new JSONObject();

		
		UserDao userDao=new UserDao();
		user u=userDao.CheckIsLogin(request, response);
		
		if(u!=null&&!"".equals(u.toString())) {
			booktype booktype=new booktype();
			Map<String, String[]> paraMap=request.getParameterMap();
			BkTypeDao bkTypeDao=new BkTypeDao();
			try {
				BeanUtils.populate(booktype,paraMap);
				String sonString=booktype.getSontype().toString();
				if (sonString!=null&&!"".equals(sonString)) {
					bkTypeDao.changetonull(booktype.getSontype().toString());
					bkTypeDao.deletes(booktype);
					jsonobj.put("code", "200");
					jsonobj.put("msg", "成功删除该类别");
					PrintWriter oPrintWriter=response.getWriter();
					oPrintWriter.println(jsonobj);
				}else {
					
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
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

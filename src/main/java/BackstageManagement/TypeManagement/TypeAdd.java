package BackstageManagement.TypeManagement;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import DAO.BkTypeDao;
import DAO.UserDao;
import MODEL.booktype;
import MODEL.user;
import net.sf.json.JSONObject;


@WebServlet("/TypeAdd")
public class TypeAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public TypeAdd() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		try {
			JSONObject jsonobj=new JSONObject();
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=UTF-8");
			
			UserDao userDao=new UserDao();
			user u=userDao.CheckIsLogin(request, response);
			
			if(u!=null&&!"".equals(u.toString())) {
				BkTypeDao bkTypeDao=new BkTypeDao();
				booktype booktype=new booktype();
				BeanUtils.populate(booktype, request.getParameterMap());
				List<booktype>typeList=new ArrayList<booktype>();
				typeList=bkTypeDao.selects(booktype);
				if(typeList.isEmpty())
				{
					bkTypeDao.adds(booktype);
					jsonobj.put("code", "200");
					jsonobj.put("msg", "该类型添加成功");
				}else {
					jsonobj.put("code", "error");
					jsonobj.put("msg", "该类型已存在");
					}
			   }
		   }catch (Exception e) {
			// TODO: handle exception
		}
	}


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

package Services.CollectionServices;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import DAO.CollectionDao;
import DAO.UserDao;
import MODEL.collection;
import MODEL.user;


@WebServlet("/CollectionShow")
public class CollectionShow extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public CollectionShow() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset =UTF-8");
		//ÑéÖ¤ÊÇ·ñµÇÂ¼
		UserDao userDao=new UserDao();
		user user=userDao.CheckIsLogin(request, response);
		Gson gson=new Gson();
		PrintWriter out=response.getWriter();
		if (user!=null&&!"".equals(user.toString())) {
			List<collection> collectionlist=new ArrayList<collection>();
			CollectionDao collectionDao=new CollectionDao();
			collection myCollection=new collection();
			myCollection.setUserid(user.getUserid().toString());
			try {
				collectionlist=collectionDao.selects(myCollection);
				String collerctionJSON=gson.toJson(collectionlist);
				out.println(collerctionJSON);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

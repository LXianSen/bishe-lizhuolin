package Services.CollectionServices;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.CollectionDao;
import DAO.UserDao;
import MODEL.collection;
import MODEL.user;


@WebServlet("/ACCollections")
public class ACCollections extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ACCollections() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset =UTF-8");
		
		UserDao userDao=new UserDao();
		CollectionDao collectionDao=new CollectionDao();
		List<collection> collections=new ArrayList<collection>();

		user u=userDao.CheckIsLogin(request, response);

		if(u!=null&&"".equals(u.toString())) {
			collection collection=new collection();
			collection.setUserid(u.getuserId().toString());
			collection.setISBN(request.getParameter("ISBN"));
			try {
				collections=collectionDao.selects(collection);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if (collections.get(0)!=null&&!"".equals(collections.get(0))) {
				//取消收藏
				try {
					collectionDao.deletes(collection);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}else {
				//添加收藏
				try {
					collectionDao.adds(collection);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package DAO;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MODEL.book;


@WebServlet("/BookDao")

//BookDao�̳л���BaseDao,��ɷ���ʵ����
public class BookDao extends BaseDAO<book> {
	
		
}

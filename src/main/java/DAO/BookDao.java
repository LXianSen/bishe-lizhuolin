package DAO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import MODEL.book;


@WebServlet("/BookDao")

//BookDao继承基类BaseDao,完成方法实例化
public class BookDao extends BaseDAO<book> {
	public book getBookbyisbn(Long itemisbn) throws SQLException, Exception {
		Connection connection=Druid().getConnection();
		Statement st=null;
		ResultSet rs=null;
		book book=new book();
		String sql="select * from book where isbn='"+itemisbn+"'";
		st=connection.createStatement();
		rs=st.executeQuery(sql);
		//ISBN;bname;bauthor; bpublish;bdate;bprice;bdiscount;synopsis;stock;
		if(rs.next()) {
			book.setISBN(rs.getLong(1));
			book.setBname(rs.getString(2));
			book.setBauthor(rs.getString(3));
			book.setBpublish(rs.getString(4));
			book.setBdate(rs.getString(5));
			book.setBprice(rs.getDouble(6));
			book.setBdiscount(rs.getDouble(7));
			book.setSynopsis(rs.getString(8));
			book.setStock(rs.getLong(9));
		}
		return book;
	}
		
}

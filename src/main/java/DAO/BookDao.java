package DAO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import MODEL.book;
import MODEL.cartitem;


@WebServlet("/BookDao")

//BookDao继承基类BaseDao,完成方法实例化
public class BookDao extends BaseDAO<book> {

	
	public List<book> getBookNoClear(book bk) throws SQLException, Exception{
		
			Connection connection=Druid().getConnection();
			
			return null;
			
	}
	
	
	
	
	/*
	 * public List<book> getBookbyType(book bk) throws SQLException, Exception {
	 * 
	 * Connection connection=Druid().getConnection(); Statement st=null; ResultSet
	 * rs=null; List<book> bklist = new ArrayList<book>(); String
	 * sql="select * from book where typeid="+bk.getTypeid()+"";
	 * st=connection.createStatement(); rs=st.executeQuery(sql);
	 * //ISBN;bname;bauthor; bpublish;bdate;bprice;bdiscount;synopsis;stock;typeid
	 * while (rs.next()) { book temp =new
	 * book(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.
	 * getString(5),rs.getString(6),rs.getDouble(7),rs.getDouble(8),rs.getString(9),
	 * rs.getLong(10),rs.getString(11)); bklist.add(temp); } return bklist; }
	 */
	/*
	 * public book getBookbyisbn(book bk) throws SQLException, Exception {
	 * Connection connection=Druid().getConnection(); Statement st=null; ResultSet
	 * rs=null; book book=new book(); String
	 * sql="select * from book where isbn="+bk.getISBN()+"";
	 * st=connection.createStatement(); rs=st.executeQuery(sql);
	 * 
	 * // ISBN;img;
	 * bname;bauthor;bpublish;bdate;bprice;bdiscount;synopsis;stock;typeid;
	 * if(rs.next()) { book.setISBN(rs.getString(1)); book.setImg(rs.getString(2));
	 * book.setBname(rs.getString(3)); book.setBauthor(rs.getString(4));
	 * book.setBpublish(rs.getString(5)); book.setBdate(rs.getString(6));
	 * book.setBprice(rs.getDouble(7)); book.setBdiscount(rs.getDouble(8));
	 * book.setSynopsis(rs.getString(9)); book.setStock(rs.getLong(10));
	 * book.setTypeid(rs.getString(11)); } return book; }
	 */
	
	

		
}

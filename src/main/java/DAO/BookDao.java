package DAO;

import java.io.IOException;
import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import MODEL.booktype;
import MODEL.book;
import MODEL.cartitem;


@WebServlet("/BookDao")

//BookDao继承基类BaseDao,完成方法实例化
public class BookDao extends BaseDAO<book> {

	//获取书本折扣价
	public double getdiscountPrice(cartitem cartitem) throws SQLException, Exception {
		Connection connection=Druid().getConnection();
		double price = 0;
		String sql = "select price*discount from cartitem where userid = "+cartitem.getUserid()+"";
		PreparedStatement ps=connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		try {
			if (rs.next()) {
				price = rs.getDouble(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return price;
	}
	
	
	//book表结果+booktype表结果
	public List<book> getBookNoClear(String msg) throws SQLException, Exception{
		
		List<book> booklist=new ArrayList<book>();
		Connection connection=Druid().getConnection();
		
		//select DISTINCT book.* from book LEFT JOIN type on book.typeid=type.typeid where CONCAT(IFNULL(type.typeson,' '),IFNULL(type.typefather,' '),IFNULL(book.author,' '),IFNULL(book.bname,' ')) LIKE '%i%'

		StringBuffer sb=new StringBuffer(
			"select DISTINCT book.* from book LEFT JOIN type on book.typeid=type.typeid "
			+ "where CONCAT(IFNULL(type.typeson,' '),IFNULL(type.typefather,' '),IFNULL(book.author,' '),IFNULL(book.bname,' ')) "
			+ "LIKE '%");
	        sb.append(msg);
	        sb.append("%'");
	        PreparedStatement ps=connection.prepareStatement(sb.toString());
			ResultSet rs=ps.executeQuery();
			ResultSetMetaData rsmd = rs.getMetaData();
			int count=rsmd.getColumnCount();
			while (rs.next()) {
				 book booktemp=new book();
		            
		            for (int i = 1; i <= count; i++)
		            {
		                // 根据列号 来获得 列名
		                String columnName = rsmd.getColumnName(i);
		                // 根据列名 来获取 当前列的数据
		                Object value = rs.getObject(columnName);
		                // 根据列名 通过反射来找属性对象
		                Field f = book.class.getDeclaredField(columnName);
		                if (f != null)
		                {
		                    f.setAccessible(true);
		                    f.set(booktemp, value);
		                }
		                System.out.println(columnName+": "+value);
		            }
		            
		            booklist.add(booktemp);
		            
			}
			return booklist;
			
	}
	

	public List<book> selectnewBooks() throws SQLException, Exception{
		Connection connection=Druid().getConnection();
		String sql="select * from book order by bdate desc limit(6)";
		PreparedStatement ps=connection.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		ResultSetMetaData rsmd = rs.getMetaData();
		int count=rsmd.getColumnCount();
		List<book> newbooks=new ArrayList<book>();
		while (rs.next()) {
			book tempBook=new book();
            for (int i = 1; i <= count; i++)
            {
                // 根据列号 来获得 列名
                String columnName = rsmd.getColumnName(i);
                // 根据列名 来获取 当前列的数据
                Object value = rs.getObject(columnName);
                // 根据列名 通过反射来找属性对象
                Field f = book.class.getDeclaredField(columnName);
                if (f != null)
                {
                    f.setAccessible(true);
                    f.set(tempBook, value);
                }
            }
            newbooks.add(tempBook);
		}

		return newbooks;
		
	}
		
}

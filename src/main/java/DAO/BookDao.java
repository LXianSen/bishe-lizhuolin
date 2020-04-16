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


import MODEL.Booktype;
import MODEL.book;
import MODEL.cartitem;


@WebServlet("/BookDao")

//BookDao继承基类BaseDao,完成方法实例化
public class BookDao extends BaseDAO<book> {

	//获取书本折扣价
	public double getdiscountPrice(cartitem cartitem) throws SQLException, Exception {
		Connection connection=Druid().getConnection();
		double price = 0;
		String sql = "select price*discount from cartitem where userid = "+cartitem.getuserId()+"";
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
	
	
	public List<book> getBookNoClear(String msg) throws SQLException, Exception{
		
		//SELECT * FROM `表明` join ' 表明' WHERE CONCAT(IFNULL(`字段1`,''),IFNULL(`字段2`,''),IFNULL(`字段3`,'')) LIKE ‘%关键字%’
		List<book> booklist=new ArrayList<book>();
		Connection connection=Druid().getConnection();
		StringBuffer sb=new StringBuffer("select * from ");
		sb.append(book.class.getSimpleName());
		sb.append("join");
		sb.append(Booktype.class.getSimpleName());
        sb.append(" where 1 = 1 and concat(");
		Field[] fs=book.class.getDeclaredFields();
		  for (Field f : fs)
	        {
	            // 属性名称 （对应的是表的列名）
	            String name = f.getName();
	            f.setAccessible(true);
	            sb.append("IFNULL(");
                sb.append(name).append(",''), ");	            
	        }
	        sb = new StringBuffer(sb.toString().substring(0, sb.toString().length() - 1));
	        sb.append(")like '%");
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

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

	// 获取书本折扣价
	public double getdiscountPrice(cartitem cartitem) throws SQLException, Exception {
		Connection connection = Druid().getConnection();
		double price = 0;
		String sql = "select price*discount from cartitem where userid = " + cartitem.getUserid() + "";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		try {
			if (rs.next()) {
				price = rs.getDouble(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		connection.close();
		return price;
	}

	// book表结果+booktype表结果
	public List<book> getBookNoClear(String msg) throws SQLException, Exception {
		List<book> booklist = new ArrayList<book>();
		Connection connection = Druid().getConnection();
		// select DISTINCT book.* from book LEFT JOIN type on book.typeid=type.typeid
		// where CONCAT(IFNULL(type.typeson,' '),IFNULL(type.typefather,'
		// '),IFNULL(book.author,' '),IFNULL(book.bname,' ')) LIKE '%i%'
		StringBuffer sb = new StringBuffer(
				"select DISTINCT book.* from book LEFT JOIN booktype on book.sontype=booktype.sontype "
						+ "where CONCAT(IFNULL(booktype.sontype,' '),IFNULL(booktype.fathertype,' '),IFNULL(book.bauthor,' '),IFNULL(book.bname,' ')) "
						+ "LIKE '%");
		sb.append(msg);
		sb.append("%'");
		PreparedStatement ps = connection.prepareStatement(sb.toString());
		ResultSet rs = ps.executeQuery();
		ResultSetMetaData rsmd = rs.getMetaData();
		int count = rsmd.getColumnCount();
		while (rs.next()) {
			book booktemp = new book();
			for (int i = 1; i <= count; i++) {
				// 根据列号 来获得 列名
				String columnName = rsmd.getColumnName(i);
				// 根据列名 来获取 当前列的数据
				Object value = rs.getObject(columnName);
				// 根据列名 通过反射来找属性对象
				Field f = booktemp.getClass().getDeclaredField(columnName);
				if (f != null) {
					f.setAccessible(true);
					f.set(booktemp, value);
				}
				System.out.println(columnName + ": " + value);
			}
			booklist.add(booktemp);
		}
		connection.close();
		return booklist;
	}

	public List<book> selectnewBooks() throws SQLException, Exception {
		Connection connection = Druid().getConnection();
		String sql = "select * from book order by bdate desc limit 6";
		PreparedStatement ps = connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ResultSetMetaData rsmd = rs.getMetaData();
		int count = rsmd.getColumnCount();
		List<book> newbooks = new ArrayList<book>();
		while (rs.next()) {
			book tempBook = new book();
			for (int i = 1; i <= count; i++) {
				// 根据列号 来获得 列名
				String columnName = rsmd.getColumnName(i);
				// 根据列名 来获取 当前列的数据
				Object value = rs.getObject(columnName);
				// 根据列名 通过反射来找属性对象
				Field f = book.class.getDeclaredField(columnName);
				if (f != null) {
					f.setAccessible(true);
					f.set(tempBook, value);
				}
			}
			newbooks.add(tempBook);
		}
		connection.close();
		return newbooks;
	}

	public List<book> selectbookpages(book b, int count, int size) throws SQLException, Exception {
		Connection connection = Druid().getConnection();
		List<book> booklist = new ArrayList<book>();
		Field[] fs = b.getClass().getDeclaredFields();
		List<Object> valuesList = new ArrayList<Object>();
		StringBuffer sqlString = new StringBuffer("select * from book where 1=1 ");
		for (Field f : fs) {
			String nameString = f.getName();
			f.setAccessible(true);
			// 传递过来的泛型对象t的属性的值
			Object value = f.get(b);
			if (value != null && !"".equals(value)) {
				if ((!value.toString().equalsIgnoreCase("0") && !value.toString().equalsIgnoreCase("0.0"))) {
					sqlString.append("and ");
					// 占位符
					sqlString.append(b.getClass().getSimpleName()).append(".").append(nameString).append("=?");
					valuesList.add(value);
				}
			}
		}
		// 实现分页
		sqlString.append(" limit ").append((count - 1) * size).append(",").append(size);
		System.out.println(sqlString);
		PreparedStatement ps = connection.prepareStatement(sqlString.toString());
		for (int i = 0; i < valuesList.size(); i++) {
			ps.setObject(i + 1, valuesList.get(i));
		}
		ResultSet rs = ps.executeQuery();
		// 元数据对象(里面包含了表头)
		ResultSetMetaData rsmd = rs.getMetaData();
		// 此表一共有多少列
		int columnCount = rsmd.getColumnCount();
		while (rs.next()) {
			book book = new book();
			for (int i = 1; i <= columnCount; i++) {
				// 根据列号 来获得 列名
				String columnName = rsmd.getColumnName(i);
				// 根据列名 来获取 当前列的数据
				Object value = rs.getObject(columnName);
				// 根据列名 通过反射来找属性对象
				Field f = book.getClass().getDeclaredField(columnName);
				if (f != null) {
					f.setAccessible(true);
					f.set(book, value);
				}
				System.out.println(columnName + ": " + value);
			}
			booklist.add(book);
		}
		connection.close();
		return booklist;
	}
	public List<book> selectsa(book book) throws Exception {
		if (book == null) {
			throw new Exception("查询有误");
		}
		// 获得连接对象Connection
		// 拼接sql语句
		// 根据连接对象创建PreparedStatment
		// 给占位符？赋值
		// 执行sql
		// 解析ResultSet
		Class clasz = book.getClass();
		List<book> objList = new ArrayList<book>();
		// 获得属性对象数组
		Field[] fs = clasz.getDeclaredFields();
		Connection con = Druid().getConnection();
		// select * from zoneArea where id = ? and zone =?
		// 保存条件参数的集合
		List<Object> parList = new ArrayList();
		StringBuffer sb = new StringBuffer("select book.*,stock.stock from ");
		sb.append(clasz.getSimpleName()).append(" left join stock");
		sb.append(" where 1 = 1");
		for (Field f : fs) {
			// 属性名称 （对应的是表的列名）
			String name = f.getName();
			f.setAccessible(true);
			// 传递过来的泛型对象t的属性的值
			Object value = f.get(book);
			if ((value != null && !"".equals(value))) {
				if ((!value.toString().equalsIgnoreCase("0") && !value.toString().equalsIgnoreCase("0.0"))) {
					sb.append(" and ");
					sb.append(name).append("=? ");
					// 把条件添加到集合中
					parList.add(value);
				}
			}
		}
		// id=? and area=?
		System.out.println(sb.toString());
		// 创建预编译语句对象
		PreparedStatement ps = con.prepareStatement(sb.toString());
		for (int i = 0; i < parList.size(); i++) {
			ps.setObject(i + 1, parList.get(i));
		}
		ResultSet rs = ps.executeQuery();
		// 元数据对象(里面包含了表头)
		ResultSetMetaData rsmd = rs.getMetaData();
		// 此表一共有多少列
		int columnCount = rsmd.getColumnCount();
		// System.out.println();
		// rsmd.getColumnName(column)
		while (rs.next()) {
			book obj = (book) clasz.newInstance();
			for (int i = 1; i <= columnCount; i++) {
				// 根据列号 来获得 列名
				String columnName = rsmd.getColumnName(i);
				// 根据列名 来获取 当前列的数据
				Object value = rs.getObject(columnName);
				// 根据列名 通过反射来找属性对象
				Field f = clasz.getDeclaredField(columnName);
				if (f != null) {
					f.setAccessible(true);
					f.set(obj, value);
				}
				System.out.println(columnName + ": " + value);
			}
			objList.add(obj);
		}
		System.out.println(objList);
		con.close();
		return objList;
	}
}

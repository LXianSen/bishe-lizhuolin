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

//BookDao�̳л���BaseDao,��ɷ���ʵ����
public class BookDao extends BaseDAO<book> {

	// ��ȡ�鱾�ۿۼ�
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

	// book����+booktype����
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
				// �����к� ����� ����
				String columnName = rsmd.getColumnName(i);
				// �������� ����ȡ ��ǰ�е�����
				Object value = rs.getObject(columnName);
				// �������� ͨ�������������Զ���
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
				// �����к� ����� ����
				String columnName = rsmd.getColumnName(i);
				// �������� ����ȡ ��ǰ�е�����
				Object value = rs.getObject(columnName);
				// �������� ͨ�������������Զ���
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
			// ���ݹ����ķ��Ͷ���t�����Ե�ֵ
			Object value = f.get(b);
			if (value != null && !"".equals(value)) {
				if ((!value.toString().equalsIgnoreCase("0") && !value.toString().equalsIgnoreCase("0.0"))) {
					sqlString.append("and ");
					// ռλ��
					sqlString.append(b.getClass().getSimpleName()).append(".").append(nameString).append("=?");
					valuesList.add(value);
				}
			}
		}
		// ʵ�ַ�ҳ
		sqlString.append(" limit ").append((count - 1) * size).append(",").append(size);
		System.out.println(sqlString);
		PreparedStatement ps = connection.prepareStatement(sqlString.toString());
		for (int i = 0; i < valuesList.size(); i++) {
			ps.setObject(i + 1, valuesList.get(i));
		}
		ResultSet rs = ps.executeQuery();
		// Ԫ���ݶ���(��������˱�ͷ)
		ResultSetMetaData rsmd = rs.getMetaData();
		// �˱�һ���ж�����
		int columnCount = rsmd.getColumnCount();
		while (rs.next()) {
			book book = new book();
			for (int i = 1; i <= columnCount; i++) {
				// �����к� ����� ����
				String columnName = rsmd.getColumnName(i);
				// �������� ����ȡ ��ǰ�е�����
				Object value = rs.getObject(columnName);
				// �������� ͨ�������������Զ���
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
			throw new Exception("��ѯ����");
		}
		// ������Ӷ���Connection
		// ƴ��sql���
		// �������Ӷ��󴴽�PreparedStatment
		// ��ռλ������ֵ
		// ִ��sql
		// ����ResultSet
		Class clasz = book.getClass();
		List<book> objList = new ArrayList<book>();
		// ������Զ�������
		Field[] fs = clasz.getDeclaredFields();
		Connection con = Druid().getConnection();
		// select * from zoneArea where id = ? and zone =?
		// �������������ļ���
		List<Object> parList = new ArrayList();
		StringBuffer sb = new StringBuffer("select book.*,stock.stock from ");
		sb.append(clasz.getSimpleName()).append(" left join stock");
		sb.append(" where 1 = 1");
		for (Field f : fs) {
			// �������� ����Ӧ���Ǳ��������
			String name = f.getName();
			f.setAccessible(true);
			// ���ݹ����ķ��Ͷ���t�����Ե�ֵ
			Object value = f.get(book);
			if ((value != null && !"".equals(value))) {
				if ((!value.toString().equalsIgnoreCase("0") && !value.toString().equalsIgnoreCase("0.0"))) {
					sb.append(" and ");
					sb.append(name).append("=? ");
					// ��������ӵ�������
					parList.add(value);
				}
			}
		}
		// id=? and area=?
		System.out.println(sb.toString());
		// ����Ԥ����������
		PreparedStatement ps = con.prepareStatement(sb.toString());
		for (int i = 0; i < parList.size(); i++) {
			ps.setObject(i + 1, parList.get(i));
		}
		ResultSet rs = ps.executeQuery();
		// Ԫ���ݶ���(��������˱�ͷ)
		ResultSetMetaData rsmd = rs.getMetaData();
		// �˱�һ���ж�����
		int columnCount = rsmd.getColumnCount();
		// System.out.println();
		// rsmd.getColumnName(column)
		while (rs.next()) {
			book obj = (book) clasz.newInstance();
			for (int i = 1; i <= columnCount; i++) {
				// �����к� ����� ����
				String columnName = rsmd.getColumnName(i);
				// �������� ����ȡ ��ǰ�е�����
				Object value = rs.getObject(columnName);
				// �������� ͨ�������������Զ���
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

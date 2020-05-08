package DAO;

import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import MODEL.book;
import MODEL.cart;
import MODEL.cartitem;

public class CartDao extends BaseDAO<cartitem> {

	// 获取总价
	public double getsumPrice(Map cartitem) throws SQLException, Exception {
		Connection connection = Druid().getConnection();
		double price = 0;
		String sql = "select sum(bprice) from cartitem where userid ='" + cartitem.get("userid").toString() + "'";
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
		return price;
	}
	// 获取折扣总价
	public double getsumdiscountPrice(Map cartitem) throws SQLException, Exception {
		Connection connection = Druid().getConnection();
		double price = 0;
		String sql = "select sum(bprice*bdiscount) from cartitem where userid = '" + cartitem.get("userid").toString()
				+ "'";
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
		return price;
	}

	public List<Map> showcartitems(cartitem cartitem, String userid) throws SQLException, Exception {
		Connection connection = Druid().getConnection();
		List<Map> cartitemList = new ArrayList<Map>();
		StringBuffer sqlString = new StringBuffer(
				"select cartitem.*,book.bname,book.img1 from cartitem LEFT JOIN book on cartitem.ISBN=book.ISBN where userid='");
		sqlString.append(userid).append("'");
		PreparedStatement pStatement = connection.prepareStatement(sqlString.toString());
		ResultSet rSet = pStatement.executeQuery();
		// 元数据对象(里面包含了表头)
		ResultSetMetaData rsmd = rSet.getMetaData();
		// 此表一共有多少列
		int columnCount = rsmd.getColumnCount();
		while (rSet.next()) {
			Map tempMap = new HashMap();
			for (int i = 1; i <= columnCount; i++) {
				// 根据列号 来获得 列名
				String columnName = rsmd.getColumnName(i);
				// 根据列名 来获取 当前列的数据
				Object value = rSet.getObject(columnName);
				// 根据列名 通过反射来找属性对象
				tempMap.put(columnName, value);
			}
			cartitemList.add(tempMap);
		}
		return cartitemList;
	}
}

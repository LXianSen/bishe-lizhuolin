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

	// ��ȡ�ܼ�
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
	// ��ȡ�ۿ��ܼ�
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
		// Ԫ���ݶ���(��������˱�ͷ)
		ResultSetMetaData rsmd = rSet.getMetaData();
		// �˱�һ���ж�����
		int columnCount = rsmd.getColumnCount();
		while (rSet.next()) {
			Map tempMap = new HashMap();
			for (int i = 1; i <= columnCount; i++) {
				// �����к� ����� ����
				String columnName = rsmd.getColumnName(i);
				// �������� ����ȡ ��ǰ�е�����
				Object value = rSet.getObject(columnName);
				// �������� ͨ�������������Զ���
				tempMap.put(columnName, value);
			}
			cartitemList.add(tempMap);
		}
		return cartitemList;
	}
}

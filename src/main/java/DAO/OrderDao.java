package DAO;

import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;


import com.alibaba.druid.util.StringUtils;

import MODEL.order;
import MODEL.user;

public class OrderDao extends BaseDAO {
	
	
	public List<order> myOrders(order order) throws SQLException, Exception{
		Connection connection=Druid().getConnection();
		String sql="select * from `order` where userid="+order.getUserid();
		PreparedStatement ps=connection.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();			
		ResultSetMetaData rsmd = rs.getMetaData();
		int count=rsmd.getColumnCount();
		List<order> myOrders=new ArrayList<order>();
		while(rs.next()) {
			order tempOrder=new order();
			for (int i = 1; i < count; i++) {
				 // �����к� ����� ����
                String columnName = rsmd.getColumnName(i);
                // �������� ����ȡ ��ǰ�е�����
                Object value = rs.getObject(columnName);
                // �������� ͨ�������������Զ���
                Field f = tempOrder.getClass().getDeclaredField(columnName);
                if (f != null)
                {
                    f.setAccessible(true);
                    f.set(tempOrder, value);
                }
			}
			myOrders.add(tempOrder);
		}
		return myOrders;
		
	}
	// ���Ӷ����Ը�������װ
	public List<String> fatherorderList(order order, user user) throws SQLException, Exception {
		Connection connection = Druid().getConnection();
		List<String> fatherList = new ArrayList<String>();
		Field[] fs1 = order.getClass().getDeclaredFields();
		Field[] fs2 = user.getClass().getDeclaredFields();
		StringBuffer sql1 = new StringBuffer("select distinct fatherorder from ((`order` LEFT JOIN book on book.ISBN=`order`.ISBN) LEFT JOIN `user` on `order`.userid=`user`.userid) LEFT JOIN address USING(addressid) where 1=1 ");
		for (Field f : fs1) {
			// �������� ����Ӧ���Ǳ��������
			String name = f.getName();
			f.setAccessible(true);

			// ���ݹ����ķ��Ͷ���t�����Ե�ֵ
			Object value = f.get(order);

			if (value != null && !"".equals(value)) {
				if ((!value.toString().equalsIgnoreCase("0") && !value.toString().equalsIgnoreCase("0.0"))) {
					sql1.append("and ");
					// ռλ��
					sql1.append(name).append("=?");
				}

			}
		}
		for (Field f : fs2) {
			// �������� ����Ӧ���Ǳ��������
			String name = f.getName();
			f.setAccessible(true);

			// ���ݹ����ķ��Ͷ���t�����Ե�ֵ
			Object value = f.get(user);

			if (value != null && !"".equals(value)) {
				if ((!value.toString().equalsIgnoreCase("0") && !value.toString().equalsIgnoreCase("0.0"))) {
					sql1.append("and ");
					// ռλ��
					sql1.append(name).append("=?");
				}

			}
		}
		PreparedStatement ps = connection.prepareStatement(sql1.toString());
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			fatherList.add(rs.getString("fatherorder"));
		}
		return fatherList;
	}

	public List<Map> showorderList(List<String> fatherlist) throws SQLException, Exception {

		Connection connection = Druid().getConnection();
		List<Map> orderList = new ArrayList<Map>();

		for (int i = 0; i < fatherlist.size(); i++) {
			StringBuffer sqlString = new StringBuffer(
					"select `order`.*,book.bname,`user`.username,address.* from ((`order` LEFT JOIN book on book.ISBN=`order`.ISBN) LEFT JOIN `user` on `order`.userid=`user`.userid) LEFT JOIN address USING(addressid) where `order`.fatherorder=");
			sqlString.append(fatherlist.get(i));
			System.out.println(sqlString);
			PreparedStatement tempPS = connection.prepareStatement(sqlString.toString());
			ResultSet rs = tempPS.executeQuery();
			// Ԫ���ݶ���(��������˱�ͷ)
			ResultSetMetaData rsmd = rs.getMetaData();

			// �˱�һ���ж�����
			int columnCount = rsmd.getColumnCount();
			Map<Object, Object> tempMap = new HashMap<Object, Object>();

			System.out.println("hhhhhhh");

			for (int j = 1; j <= columnCount; j++) {
				List<Object> tempList = new ArrayList<Object>();
				ResultSet rs1 = tempPS.executeQuery();
				// Ԫ���ݶ���(��������˱�ͷ)
				ResultSetMetaData rsmd1 = rs1.getMetaData();
				// �����к� ����� ����
				String columnName = rsmd1.getColumnName(j);
				while (rs1.next()) {
					
					// �������� ����ȡ ��ǰ�е�����
					Object value = rs1.getObject(columnName);
					if (tempList.indexOf(value) != -1) {

					} else {
						tempList.add(value);
					}
				}
				
				tempMap.put(columnName, tempList);

			}
			orderList.add(tempMap);
		}

		return orderList;
	}
}

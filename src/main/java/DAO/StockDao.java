package DAO;

import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import MODEL.stock;

public class StockDao extends BaseDAO<stock> {
	public List<stock> selectdesc(stock stock) throws Exception {
		if (stock == null) {
			throw new Exception("��ѯ����");
		}
		// ������Ӷ���Connection
		// ƴ��sql���
		// �������Ӷ��󴴽�PreparedStatment
		// ��ռλ������ֵ
		// ִ��sql
		// ����ResultSet
		Class clasz = stock.getClass();
		List<stock> objList = new ArrayList<stock>();
		// ������Զ�������
		Field[] fs = clasz.getDeclaredFields();
		Connection con = Druid().getConnection();
		// select * from zoneArea where id = ? and zone =?
		// �������������ļ���
		List<Object> parList = new ArrayList();
		StringBuffer sb = new StringBuffer("select * from ");
		sb.append(clasz.getSimpleName());
		sb.append(" where 1 = 1");
		for (Field f : fs) {
			// �������� ����Ӧ���Ǳ��������
			String name = f.getName();
			f.setAccessible(true);
			// ���ݹ����ķ��Ͷ���t�����Ե�ֵ
			Object value = f.get(stock);
			if ((value != null && !"".equals(value))) {
				if ((!value.toString().equalsIgnoreCase("0") && !value.toString().equalsIgnoreCase("0.0"))) {
					sb.append(" and ");
					sb.append(name).append("=? ");
					// ��������ӵ�������
					parList.add(value);
				}
			}
		}
		sb.append("order by sales desc limit 6");
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
			stock obj = (stock) clasz.newInstance();
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

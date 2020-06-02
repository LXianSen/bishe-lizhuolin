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
			throw new Exception("查询有误");
		}
		// 获得连接对象Connection
		// 拼接sql语句
		// 根据连接对象创建PreparedStatment
		// 给占位符？赋值
		// 执行sql
		// 解析ResultSet
		Class clasz = stock.getClass();
		List<stock> objList = new ArrayList<stock>();
		// 获得属性对象数组
		Field[] fs = clasz.getDeclaredFields();
		Connection con = Druid().getConnection();
		// select * from zoneArea where id = ? and zone =?
		// 保存条件参数的集合
		List<Object> parList = new ArrayList();
		StringBuffer sb = new StringBuffer("select * from ");
		sb.append(clasz.getSimpleName());
		sb.append(" where 1 = 1");
		for (Field f : fs) {
			// 属性名称 （对应的是表的列名）
			String name = f.getName();
			f.setAccessible(true);
			// 传递过来的泛型对象t的属性的值
			Object value = f.get(stock);
			if ((value != null && !"".equals(value))) {
				if ((!value.toString().equalsIgnoreCase("0") && !value.toString().equalsIgnoreCase("0.0"))) {
					sb.append(" and ");
					sb.append(name).append("=? ");
					// 把条件添加到集合中
					parList.add(value);
				}
			}
		}
		sb.append("order by sales desc limit 6");
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
			stock obj = (stock) clasz.newInstance();
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

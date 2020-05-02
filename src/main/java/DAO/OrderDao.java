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

import MODEL.order;

public class OrderDao extends BaseDAO {
	public List<Map> showorderList(order order) throws SQLException, Exception{

		Connection connection=Druid().getConnection();
		List<Object> valueList=new ArrayList<Object>();
		Field[] fs=order.getClass().getDeclaredFields();
		StringBuffer sqlString=new StringBuffer("select order.*,book.bname from order,book on book.ISBN=order.ISBN where 1=1 ");
		for(Field f:fs) {
            // 属性名称 （对应的是表的列名）
			String name=f.getName();
			f.setAccessible(true);

            // 传递过来的泛型对象t的属性的值
			Object value=f.get(order);
			
			if (value!=null&&!"".equals(value)) {
				if ((!value.toString().equalsIgnoreCase("0")&&!value.toString().equalsIgnoreCase("0.0"))) {
					sqlString.append("and ");
					//占位符
					sqlString.append(name).append("=?");
					valueList.add(value);
				}
				
			}
		}
		System.out.println(sqlString.toString());
		PreparedStatement ps=connection.prepareStatement(sqlString.toString());
        for (int i = 0; i < valueList.size(); i++)
        {
            ps.setObject(i + 1, valueList.get(i));
        }
		ResultSet rs=ps.executeQuery();
        ResultSetMetaData rsmd = rs.getMetaData();
        int count=rsmd.getColumnCount();
        
		List<Map>orderList=new ArrayList<Map>();

		while (rs.next()) {
			Map tempmap=new HashMap();
			for (int i = 1; i <= count; i++) {
			    // 根据列号 来获得 列名
	            String columnName = rsmd.getColumnName(i);
	            // 根据列名 来获取 当前列的数据
	            Object value = rs.getObject(columnName);
	            tempmap.put(columnName, value);
	        }
			orderList.add(tempmap);


		}
		return orderList;
		
	}
	
	public List<String> getfatherorders() throws SQLException, Exception{
		Connection connection=Druid().getConnection();
		List<String> fatherorders=new ArrayList<String>();
		String sqlString="select DISTINCT fatherorder from order";
		PreparedStatement ps=connection.prepareStatement(sqlString);
		ResultSet rs=ps.executeQuery();
		while (rs.next()) {
			fatherorders.add(rs.getString("fatherorder"));
		}
		return fatherorders;
	}
}

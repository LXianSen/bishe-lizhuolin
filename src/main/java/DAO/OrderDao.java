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

import MODEL.order;
import MODEL.user;

public class OrderDao extends BaseDAO {
	//将子订单以父订单封装
	public List<String> fatherorderList(order order,user user) throws SQLException, Exception{	
		Connection connection=Druid().getConnection();
		List<String> fatherList=new ArrayList<String>();
		Field[] fs1=order.getClass().getDeclaredFields();
		Field[] fs2=user.getClass().getDeclaredFields();
		StringBuffer sql1=new StringBuffer("select distinct fatherorder from `order` where 1=1 ");
		for(Field f:fs1) {
            // 属性名称 （对应的是表的列名）
			String name=f.getName();
			f.setAccessible(true);

            // 传递过来的泛型对象t的属性的值
			Object value=f.get(order);
			
			if (value!=null&&!"".equals(value)) {
				if ((!value.toString().equalsIgnoreCase("0")&&!value.toString().equalsIgnoreCase("0.0"))) {
					sql1.append("and ");
					//占位符
					sql1.append(name).append("=?");
				}
				
			}
		}
		for(Field f:fs2) {
            // 属性名称 （对应的是表的列名）
			String name=f.getName();
			f.setAccessible(true);

            // 传递过来的泛型对象t的属性的值
			Object value=f.get(order);
			
			if (value!=null&&!"".equals(value)) {
				if ((!value.toString().equalsIgnoreCase("0")&&!value.toString().equalsIgnoreCase("0.0"))) {
					sql1.append("and ");
					//占位符
					sql1.append(name).append("=?");
				}
				
			}
		}
		PreparedStatement ps=connection.prepareStatement(sql1.toString());
		ResultSet rs=ps.executeQuery();
		while (rs.next()) {
        	fatherList.add( rs.getString("fatherorder"));			
		}
		return fatherList;
	}
	
	
	public List<Map> showorderList(List<String> fatherlist) throws SQLException, Exception{

		Connection connection=Druid().getConnection();
		List<Map> orderList=new ArrayList<Map>();
		StringBuffer sqlString=new StringBuffer("select `order`.*,book.bname,`user`.username,address.* from ((`order` LEFT JOIN book on book.ISBN=`order`.ISBN) LEFT JOIN `user` on `order`.userid=`user`.userid) LEFT JOIN address USING(addressid) where `order`.fathorder=");
		for(int i=0;i<fatherlist.size();i++) {
			sqlString.append(fatherlist.get(i));
			PreparedStatement tempPS=connection.prepareStatement(sqlString.toString());
			ResultSet rs=tempPS.executeQuery();
	        // 元数据对象(里面包含了表头)
	        ResultSetMetaData rsmd = rs.getMetaData();
	        
	        // 此表一共有多少列
	        int columnCount = rsmd.getColumnCount();
			while (rs.next()) {
				Map tempMap=new HashMap();
				for(int j=0;j<columnCount;j++) {
	                // 根据列号 来获得 列名
	                String columnName = rsmd.getColumnName(i);
	                // 根据列名 来获取 当前列的数据
	                Object value = rs.getObject(columnName);
	                // 根据列名 通过反射来找属性对象
	                Field f = tempMap.getClass().getDeclaredField(columnName);
	                if (f != null)
	                {
	                    f.setAccessible(true);
	                    f.set(tempMap, value);
	                }
	                
				}
				
				orderList.add(tempMap);
			}
		}
       
		return orderList;
	}
}

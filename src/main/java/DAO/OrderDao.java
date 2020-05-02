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

public class OrderDao extends BaseDAO {
	//���Ӷ����Ը�������װ
	public Map<String,List<String>> putfatherList(List<Map> lists){	
		Map<String, List<String>> map=new HashMap<String, List<String>>();
		for(Map m:lists) {
			Iterator<String> iterator=m.keySet().iterator();
			while (iterator.hasNext()) {
				String	key=iterator.next();
				if (!map.containsKey(key)) {
					List newList=new ArrayList<>();
					newList.add(m.get(key));
					map.put(key, newList);
				}else {
					map.get(key).add((String) m.get(key));
				}
				
			}
		}
		return map;
	}
	
	
	public List<Map> showorderList(order order) throws SQLException, Exception{

		Connection connection=Druid().getConnection();
		List<Object> valueList=new ArrayList<Object>();
		Field[] fs=order.getClass().getDeclaredFields();
		StringBuffer sqlString=new StringBuffer("select `order`.*,book.bname,`user`.username,address.* from ((`order` LEFT JOIN book on book.ISBN=`order`.ISBN) LEFT JOIN `user` on `order`.userid=`user`.userid) LEFT JOIN address USING(addressid) where 1=1");
		for(Field f:fs) {
            // �������� ����Ӧ���Ǳ��������
			String name=f.getName();
			f.setAccessible(true);

            // ���ݹ����ķ��Ͷ���t�����Ե�ֵ
			Object value=f.get(order);
			
			if (value!=null&&!"".equals(value)) {
				if ((!value.toString().equalsIgnoreCase("0")&&!value.toString().equalsIgnoreCase("0.0"))) {
					sqlString.append("and ");
					//ռλ��
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
			    // �����к� ����� ����
	            String columnName = rsmd.getColumnName(i);
	            // �������� ����ȡ ��ǰ�е�����
	            Object value = rs.getObject(columnName);
	            tempmap.put(columnName, value);
	        }
			orderList.add(tempmap);


		}
		List<Map>orders=new ArrayList<Map>();
		orders.add(putfatherList(orderList));
		return orders;
		
	}

}

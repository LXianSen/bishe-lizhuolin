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
	//���Ӷ����Ը�������װ
	public List<String> fatherorderList(order order,user user) throws SQLException, Exception{	
		Connection connection=Druid().getConnection();
		List<String> fatherList=new ArrayList<String>();
		Field[] fs1=order.getClass().getDeclaredFields();
		Field[] fs2=user.getClass().getDeclaredFields();
		StringBuffer sql1=new StringBuffer("select distinct fatherorder from `order` where 1=1 ");
		for(Field f:fs1) {
            // �������� ����Ӧ���Ǳ��������
			String name=f.getName();
			f.setAccessible(true);

            // ���ݹ����ķ��Ͷ���t�����Ե�ֵ
			Object value=f.get(order);
			
			if (value!=null&&!"".equals(value)) {
				if ((!value.toString().equalsIgnoreCase("0")&&!value.toString().equalsIgnoreCase("0.0"))) {
					sql1.append("and ");
					//ռλ��
					sql1.append(name).append("=?");
				}
				
			}
		}
		for(Field f:fs2) {
            // �������� ����Ӧ���Ǳ��������
			String name=f.getName();
			f.setAccessible(true);

            // ���ݹ����ķ��Ͷ���t�����Ե�ֵ
			Object value=f.get(order);
			
			if (value!=null&&!"".equals(value)) {
				if ((!value.toString().equalsIgnoreCase("0")&&!value.toString().equalsIgnoreCase("0.0"))) {
					sql1.append("and ");
					//ռλ��
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
	        // Ԫ���ݶ���(��������˱�ͷ)
	        ResultSetMetaData rsmd = rs.getMetaData();
	        
	        // �˱�һ���ж�����
	        int columnCount = rsmd.getColumnCount();
			while (rs.next()) {
				Map tempMap=new HashMap();
				for(int j=0;j<columnCount;j++) {
	                // �����к� ����� ����
	                String columnName = rsmd.getColumnName(i);
	                // �������� ����ȡ ��ǰ�е�����
	                Object value = rs.getObject(columnName);
	                // �������� ͨ�������������Զ���
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

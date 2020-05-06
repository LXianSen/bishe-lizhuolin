package DAO;


import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import MODEL.address;
import MODEL.book;

public class AddressDao extends BaseDAO {

	public void resetdefaultaddress(address address) throws SQLException, Exception {
		Connection connection=Druid().getConnection();
		StringBuffer sqlString=new StringBuffer("update address set isdefault=0 where userid='");
		sqlString.append(address.getUserid()).append("'");
		PreparedStatement pStatement=connection.prepareStatement(sqlString.toString());
		pStatement.executeUpdate();
	}
	
	public List<address>addressesbyisdefault(address address) throws SQLException, Exception{
		Connection connection=Druid().getConnection();
		List<address> addressList=new ArrayList<address>();
		StringBuffer sqlString=new StringBuffer("select * from address where userid='");
		sqlString.append(address.getUserid()).append("'");
		PreparedStatement pStatement=connection.prepareStatement(sqlString.toString());
		ResultSet rSet=pStatement.executeQuery();
		ResultSetMetaData rsmd=rSet.getMetaData();
		int count=rsmd.getColumnCount();
		while(rSet.next()) {
			address tempAddress=new address();
			for (int i = 0; i < count; i++) {
				   // �����к� ����� ����
                String columnName = rsmd.getColumnName(i);
                // �������� ����ȡ ��ǰ�е�����
                Object value = rSet.getObject(columnName);
                // �������� ͨ�������������Զ���
                Field f = address.class.getDeclaredField(columnName);
                if (f != null)
                {
                    f.setAccessible(true);
                    f.set(tempAddress, value);
                }
			}
			addressList.add(tempAddress);
		}
		return addressList;
		
	}
}

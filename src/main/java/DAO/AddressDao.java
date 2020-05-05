package DAO;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import MODEL.address;

public class AddressDao extends BaseDAO {

	public void resetdefaultaddress(address address) throws SQLException, Exception {
		Connection connection=Druid().getConnection();
		StringBuffer sqlString=new StringBuffer("update address set isdefault=0 where userid='");
		sqlString.append(address.getUserid()).append("'");
		PreparedStatement pStatement=connection.prepareStatement(sqlString.toString());
		pStatement.executeUpdate();
	}
}

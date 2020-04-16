package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import MODEL.cart;
import MODEL.cartitem;

public class CartDao extends BaseDAO<cartitem> {
	
	//��ȡ�ܼ�
	public double getsumPrice(cartitem cartitem) throws SQLException, Exception {
		Connection connection=Druid().getConnection();
		double price = 0;
		String sql = "select sum(price) from cartitem where userid = "+cartitem.getuserId()+"";
		PreparedStatement ps=connection.prepareStatement(sql);
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
	

	//���ﳵ����
	/*
	 * public void add(cartitem cartitem) throws SQLException, Exception {
	 * Connection connection=Druid().getConnection(); String sql =
	 * "insert into cartitem(userid,isbn,price,count)" +
	 * "values("+cartitem.getuserId()+","+cartitem.getIsbn()+","+cartitem.getPrice()
	 * +","+cartitem.getCount()+")"; System.out.println(sql); PreparedStatement
	 * ps=connection.prepareStatement(sql); ResultSet rs=ps.executeQuery(); }
	 */
	/*
	 * //ɾ����Ʒ public void delete(cartitem cartitem) throws SQLException, Exception {
	 * Connection connection=Druid().getConnection(); String sql =
	 * "delete from cartitem where userid = "+cartitem.getuserId()+" and isbn = "
	 * +cartitem.getIsbn()+" "; PreparedStatement
	 * ps=connection.prepareStatement(sql); ResultSet rs=ps.executeQuery();
	 * 
	 * }
	 */
	//�޸���Ʒ����
	
	/*
	 * public void updateNum(cartitem cartitem) throws Exception { Connection
	 * connection=Druid().getConnection(); String sql =
	 * "update cartitem set count = "+cartitem.getCount()+" where userid = "
	 * +cartitem.getuserId()+" and isbn = "+cartitem.getIsbn()+"";
	 * System.out.println(sql); PreparedStatement
	 * ps=connection.prepareStatement(sql); ResultSet rs=ps.executeQuery(); }
	 */

	/*
	 * //��չ��ﳵ public void clear(cartitem cartitem) throws SQLException, Exception {
	 * Connection connection=Druid().getConnection(); String sql =
	 * "delete from cartitem where userid = "+cartitem.getuserId()+"";
	 * PreparedStatement ps=connection.prepareStatement(sql); ResultSet
	 * rs=ps.executeQuery();
	 * 
	 * }
	 */
	//��ѯ���ﳵ����Ԫ��
	/*
	 * public List<cartitem> getAllItems(cartitem cartitem) throws SQLException,
	 * Exception { Connection connection=Druid().getConnection(); List<cartitem>
	 * list = new ArrayList<cartitem>(); String sql =
	 * "select * from cartitem where userId="+cartitem.getuserId()+"";
	 * PreparedStatement ps=connection.prepareStatement(sql); ResultSet rs =
	 * ps.executeQuery(); try { while (rs.next()) { cartitem temp =new
	 * cartitem(rs.getString(1),rs.getString(2),rs.getDouble(3),rs.getInt(4));
	 * list.add(temp); } } catch (SQLException e) { // TODO Auto-generated catch
	 * block e.printStackTrace(); } return list; }
	 */
	
	//��ȡ�ܼ�

	/*
	 * //��ѯ�û�ĳ���� public cartitem findById(cartitem cartitem) throws SQLException,
	 * Exception { cartitem cartitem2=new cartitem(); Connection
	 * connection=Druid().getConnection(); String sql =
	 * "select * from cartitem where userid = "+cartitem.getuserId()+" and isbn = "
	 * +cartitem.getIsbn()+""; PreparedStatement
	 * ps=connection.prepareStatement(sql); ResultSet rs=ps.executeQuery(); try { if
	 * (rs.next()) { cartitem2 = new cartitem(rs.getString(1), rs.getString(2),
	 * rs.getDouble(3),rs.getInt(4)); } } catch (SQLException e) { // TODO
	 * Auto-generated catch block e.printStackTrace(); } return cartitem2; }
	 */

}

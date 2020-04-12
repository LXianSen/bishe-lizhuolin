package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import MODEL.cartitem;

public class CartDao extends BaseDAO<cartitem> {

	//购物车新增
	public void add(cartitem cartitem) throws SQLException, Exception {
		Connection connection=Druid().getConnection();
		String sql = "insert into cartitem(id,isbn,count)" +
				"values("+cartitem.getId()+","+cartitem.getIsbn()+","+cartitem.getCount()+")";
		System.out.println(sql);
		PreparedStatement ps=connection.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();	}
	//修改商品数量
	public void updateNum(cartitem cartitem) throws Exception {
		Connection connection=Druid().getConnection();
		String sql = "update cartitem set count = "+cartitem.getCount()+" where id = "+cartitem.getId()+" and isbn = "+cartitem.getIsbn()+"";
		System.out.println(sql);
		PreparedStatement ps=connection.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
	}
	//删除商品
	public void delete(cartitem cartitem) throws SQLException, Exception {
		Connection connection=Druid().getConnection();
		String sql = "delete from cartitem where id = "+cartitem.getId()+" and isbn = "+cartitem.getIsbn()+" ";
		PreparedStatement ps=connection.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();

	}
	//清空购物车
	public void clear(cartitem cartitem) throws SQLException, Exception {
		Connection connection=Druid().getConnection();
		String sql = "delete from cartitem where id = "+cartitem.getId()+"";
		PreparedStatement ps=connection.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();

	}
	//查询购物车所有元素
	public List<cartitem> getAllItems(String custId) throws SQLException, Exception {
		Connection connection=Druid().getConnection();
		List<cartitem> list = new ArrayList<cartitem>();
		String sql = "select * from cartitem where custId="+custId+"";
		PreparedStatement ps=connection.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		try {
			while (rs.next()) {
				cartitem cartitem = new cartitem(rs.getString(1), rs.getString(2), rs.getInt(3));
				list.add(cartitem);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	//获取总价
	public double getsumPrice(String userid) throws SQLException, Exception {
		Connection connection=Druid().getConnection();
		double price = 0;
		String sql = "select sum(price) from cartitem where id = "+userid+"";
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

}

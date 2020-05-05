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

import MODEL.book;
import MODEL.cart;
import MODEL.cartitem;

public class CartDao extends BaseDAO<cartitem> {
	
	//获取总价
	public double getsumPrice(Map cartitem) throws SQLException, Exception {
		Connection connection=Druid().getConnection();
		double price = 0;
		String sql = "select sum(bprice) from cartitem where userid ='"+cartitem.get("userid").toString()+"'";
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
	//获取折扣总价
	public double getsumdiscountPrice(Map cartitem) throws SQLException, Exception {
		Connection connection=Druid().getConnection();
		double price = 0;
		String sql = "select sum(bprice*bdiscount) from cartitem where userid = '"+cartitem.get("userid").toString()+"'";
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

	public List<Map> showcartitems(cartitem cartitem) throws SQLException, Exception
	{
		Connection connection=Druid().getConnection();
		List<Map> cartitemList=new ArrayList<Map>();
		StringBuffer sqlString=new StringBuffer("select cartitem.*,book.bname,book.img1 from cartitem LEFT JOIN book on cartitem.ISBN=book.ISBN where userid='");
		sqlString.append(cartitem.getISBN().toString()).append("'");
		PreparedStatement pStatement=connection.prepareStatement(sqlString.toString());
		ResultSet rSet=pStatement.executeQuery();  
		 // 元数据对象(里面包含了表头)
        ResultSetMetaData rsmd = rSet.getMetaData();
        
        // 此表一共有多少列
        int columnCount = rsmd.getColumnCount();
		while(rSet.next()) {
		     Map tempMap=new HashMap();
	            
	            for (int i = 1; i <= columnCount; i++)
	            {
	                // 根据列号 来获得 列名
	                String columnName = rsmd.getColumnName(i);
	                // 根据列名 来获取 当前列的数据
	                Object value = rSet.getObject(columnName);
	                // 根据列名 通过反射来找属性对象
	                tempMap.put(columnName, value);
	            }
	            
	            cartitemList.add(tempMap);
 	  }
		return cartitemList;
		
	}
	//购物车新增
	/*
	 * public void add(cartitem cartitem) throws SQLException, Exception {
	 * Connection connection=Druid().getConnection(); String sql =
	 * "insert into cartitem(userid,isbn,price,count)" +
	 * "values("+cartitem.getuserId()+","+cartitem.getIsbn()+","+cartitem.getPrice()
	 * +","+cartitem.getCount()+")"; System.out.println(sql); PreparedStatement
	 * ps=connection.prepareStatement(sql); ResultSet rs=ps.executeQuery(); }
	 */
	/*
	 * //删除商品 public void delete(cartitem cartitem) throws SQLException, Exception {
	 * Connection connection=Druid().getConnection(); String sql =
	 * "delete from cartitem where userid = "+cartitem.getuserId()+" and isbn = "
	 * +cartitem.getIsbn()+" "; PreparedStatement
	 * ps=connection.prepareStatement(sql); ResultSet rs=ps.executeQuery();
	 * 
	 * }
	 */
	//修改商品数量
	
	/*
	 * public void updateNum(cartitem cartitem) throws Exception { Connection
	 * connection=Druid().getConnection(); String sql =
	 * "update cartitem set count = "+cartitem.getCount()+" where userid = "
	 * +cartitem.getuserId()+" and isbn = "+cartitem.getIsbn()+"";
	 * System.out.println(sql); PreparedStatement
	 * ps=connection.prepareStatement(sql); ResultSet rs=ps.executeQuery(); }
	 */

	/*
	 * //清空购物车 public void clear(cartitem cartitem) throws SQLException, Exception {
	 * Connection connection=Druid().getConnection(); String sql =
	 * "delete from cartitem where userid = "+cartitem.getuserId()+"";
	 * PreparedStatement ps=connection.prepareStatement(sql); ResultSet
	 * rs=ps.executeQuery();
	 * 
	 * }
	 */
	//查询购物车所有元素
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
	
	//获取总价

	/*
	 * //查询用户某本书 public cartitem findById(cartitem cartitem) throws SQLException,
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

package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import MODEL.cart;

public class CartDao extends BaseDAO<cart> {

	@Override
	public int add(int custId, cart cart) {
		StringBuffer sb=new StringBuffer();
		PreparedStatement ps = Druid().getConnection().prepareStatement(sb.toString());
		String sql = "insert into gwc(custId,bookId,bookName,smallImg,price,hyPrice,num)" +
				"values("+custId+","+cart.getBookId()+",'"+ cart.getBookName()+"','"+cart.getSmallImg()+"'," +
						" "+gwc.getPrice()+", "+gwc.getHyPrice()+","+gwc.getNum()+")";
		System.out.println(sql);
		return dbManager.update(sql);
	}

	@Override
	public int updateNum(int custId, int bookId, int num) {
		String sql = "update gwc set num = "+num+" where custId = "+custId+" and bookId = "+bookId+"";
		System.out.println(sql);
		return dbManager.update(sql);
	}

	@Override
	public int delete(int custId, int bookId) {
		String sql = "delete from gwc where custId = "+custId+" and bookId = "+bookId+" ";
		return dbManager.update(sql);
	}

	@Override
	public int clear(int custId) {
		String sql = "delete from gwc where custId = "+custId+"";
		return dbManager.update(sql);
	}

	@Override
	public float getOldPrices(int custId) {
		float price = 0;
		String sql = "select sum(price) from gwc where custId = "+custId+"";
		ResultSet rs = dbManager.query(sql);
		try {
			if (rs.next()) {
				price = rs.getFloat(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return price;
	}

	@Override
	public float getHyPrices(int custId) {
		float price = 0;
		String sql = "select sum(hyPrice) from gwc where custId = "+custId+"";
		ResultSet rs = dbManager.query(sql);
		try {
			if (rs.next()) {
				price = rs.getFloat(1);
				System.out.println(price);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return price;
	}

	@Override
	public float getYhPrice(int custId) {
		return this.getOldPrices(custId) - this.getHyPrices(custId);
	}

	@Override
	public List<Gwc> getAllItems(int custId) {
		List<Gwc> list = new ArrayList<Gwc>();
		String sql = "select * from gwc where custId="+custId+"";
		ResultSet rs = dbManager.query(sql);
		try {
			while (rs.next()) {
				Gwc gwc = new Gwc(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getFloat(6), rs.getFloat(7), rs.getInt(8));
				list.add(gwc);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public Gwc findById(int custId, int bookId) {
		Gwc gwc = null;
		String sql = "select * from gwc where custId = "+custId+" and bookId = "+bookId+"";
		ResultSet rs = dbManager.query(sql);
		try {
			if (rs.next()) {
				gwc = new Gwc(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getFloat(6), rs.getFloat(7), rs.getInt(8));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return gwc;
	}
}


package MODEL;

import java.sql.Date;
import java.sql.Timestamp;

public class orders {
	//订单号（父订单号、子订单号）、创单时间、isbn、价格、折扣、数量、订单状态、用户id、收货地址
	private String fatherorder;
	private String sonorder;
	private Timestamp date;
	private String ISBN;
	private double bprice;
	private double bdiscount;
	private int count;
	private String status;
	private String userid;
	private String addressid;
	public String getFatherorder() {
		return fatherorder;
	}
	public void setFatherorder(String fatherorder) {
		this.fatherorder = fatherorder;
	}
	public String getSonorder() {
		return sonorder;
	}
	public void setSonorder(String sonorder) {
		this.sonorder = sonorder;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	public String getISBN() {
		return ISBN;
	}
	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}
	public double getBprice() {
		return bprice;
	}
	public void setBprice(double bprice) {
		this.bprice = bprice;
	}
	public double getBdiscount() {
		return bdiscount;
	}
	public void setBdiscount(double bdiscount) {
		this.bdiscount = bdiscount;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getAddressid() {
		return addressid;
	}
	public void setAddressid(String addressid) {
		this.addressid = addressid;
	}
	@Override
	public String toString() {
		return "order [fatherorder=" + fatherorder + ", sonorder=" + sonorder + ", date=" + date + ", ISBN=" + ISBN
				+ ", bprice=" + bprice + ", bdiscount=" + bdiscount + ", count=" + count + ", status=" + status
				+ ", userid=" + userid + ", addressid=" + addressid + "]";
	}
	public orders(String fatherorder, String sonorder, Timestamp date, String iSBN, double bprice, double bdiscount,
			int count, String status, String userid, String addressid) {
		super();
		this.fatherorder = fatherorder;
		this.sonorder = sonorder;
		this.date = date;
		ISBN = iSBN;
		this.bprice = bprice;
		this.bdiscount = bdiscount;
		this.count = count;
		this.status = status;
		this.userid = userid;
		this.addressid = addressid;
	}
	public orders() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}

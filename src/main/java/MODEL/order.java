package MODEL;

import java.sql.Date;

public class order {
	//订单号（父订单号、子订单号）、创单时间、isbn、价格、折扣、数量、订单状态、用户id
	private String fatherorder;
	private String sonorder;
	private Date date;
	private String isbn;
	private double bprice;
	private double bdiscount;
	private int count;
	private String status;
	private String userid;
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
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
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
	@Override
	public String toString() {
		return "orderlist [fatherorder=" + fatherorder + ", sonorder=" + sonorder + ", date=" + date + ", isbn=" + isbn
				+ ", bprice=" + bprice + ", bdiscount=" + bdiscount + ", count=" + count + ", status=" + status
				+ ", userid=" + userid + "]";
	}
	public order(String fatherorder, String sonorder, Date date, String isbn, double bprice, double bdiscount,
			int count, String status, String userid) {
		super();
		this.fatherorder = fatherorder;
		this.sonorder = sonorder;
		this.date = date;
		this.isbn = isbn;
		this.bprice = bprice;
		this.bdiscount = bdiscount;
		this.count = count;
		this.status = status;
		this.userid = userid;
	}
	public order() {
		super();
		// TODO Auto-generated constructor stub
	}

}

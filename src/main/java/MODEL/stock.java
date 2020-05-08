package MODEL;

import java.sql.Timestamp;

public class stock {
	private String ISBN;
	private long stock;
	private long sales;
	private Timestamp time;
	public String getISBN() {
		return ISBN;
	}
	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}
	public long getStock() {
		return stock;
	}
	public void setStock(long stock) {
		this.stock = stock;
	}
	public long getSales() {
		return sales;
	}
	public void setSales(long sales) {
		this.sales = sales;
	}
	public Timestamp getTime() {
		return time;
	}
	public void setTime(Timestamp time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "stock [ISBN=" + ISBN + ", stock=" + stock + ", sales=" + sales + ", time=" + time + "]";
	}
	public stock(String iSBN, long stock, long sales, Timestamp time) {
		super();
		ISBN = iSBN;
		this.stock = stock;
		this.sales = sales;
		this.time = time;
	}
	public stock() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}

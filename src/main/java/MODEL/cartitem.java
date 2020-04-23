
package MODEL;

public class cartitem {

	//ÓÃ»§id¡¢Êé¼®×Ö¶Î
	private String userid;
	private String isbn;
	private double price;
	private int count;
	private double discount;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	@Override
	public String toString() {
		return "cartitem [userid=" + userid + ", isbn=" + isbn + ", price=" + price + ", count=" + count + ", discount="
				+ discount + "]";
	}
	public cartitem(String userid, String isbn, double price, int count, double discount) {
		super();
		this.userid = userid;
		this.isbn = isbn;
		this.price = price;
		this.count = count;
		this.discount = discount;
	}
	public cartitem() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	}

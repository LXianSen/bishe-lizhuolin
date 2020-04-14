
package MODEL;

public class cartitem {

	//ÓÃ»§id¡¢Êé¼®×Ö¶Î
	private String userid;
	private String isbn;
	private double price;
	private int count;
	public String getuserId() {
		return userid;
	}
	public void setuserId(String userid) {
		this.userid = userid;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}

	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public cartitem(String userid, String isbn, double price, int count) {
		super();
		this.userid = userid;
		this.isbn = isbn;
		this.price = price;
		this.count = count;
	}
	@Override
	public String toString() {
		return "cartitem [userid=" + userid + ", isbn=" + isbn + ", price=" + price + ", count=" + count + "]";
	}
	public cartitem() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	}

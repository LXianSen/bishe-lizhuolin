package MODEL;
public class cart {
	private int gwcId;
	private int custId;
	private int bookId;
	private String bookName;
	private String smallImg;
	private float price;
	private float hyPrice;
	private int num;
	
	public cart() {
		// TODO Auto-generated constructor stub
	}

	public cart(int gwcId, int custId, int bookId, String bookName,
			String smallImg, float price, float hyPrice, int num) {
		super();
		this.gwcId = gwcId;
		this.custId = custId;
		this.bookId = bookId;
		this.bookName = bookName;
		this.smallImg = smallImg;
		this.price = price;
		this.hyPrice = hyPrice;
		this.num = num;
	}

	public cart(int custId, int bookId, String bookName, String smallImg,
			float price, float hyPrice, int num) {
		super();
		this.custId = custId;
		this.bookId = bookId;
		this.bookName = bookName;
		this.smallImg = smallImg;
		this.price = price;
		this.hyPrice = hyPrice;
		this.num = num;
	}

	public int getGwcId() {
		return gwcId;
	}

	public void setGwcId(int gwcId) {
		this.gwcId = gwcId;
	}

	public int getCustId() {
		return custId;
	}

	public void setCustId(int custId) {
		this.custId = custId;
	}

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getSmallImg() {
		return smallImg;
	}

	public void setSmallImg(String smallImg) {
		this.smallImg = smallImg;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public float getHyPrice() {
		return hyPrice;
	}

	public void setHyPrice(float hyPrice) {
		this.hyPrice = hyPrice;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
}
/*
 * import java.util.HashMap; import java.util.Iterator; import java.util.Map;
 * import java.util.Set;
 * 
 * 
 * public class cart { private Map<Integer, cartitem> carMap; private double
 * price; public cart() { super(); // TODO Auto-generated constructor stub }
 * public cart(Map<Integer, cartitem> carMap, double price) { super();
 * this.carMap = carMap; this.price = price; }
 * 
 * @Override public String toString() { return "cart [carMap=" + carMap +
 * ", price=" + price + "]"; } public Map<Integer, cartitem> getCarMap() {
 * return carMap; } public void setCarMap(Map<Integer, cartitem> carMap) {
 * this.carMap = carMap; } public double getPrice() { return price; } public
 * void setPrice(double price) { this.price = price; } }
 */

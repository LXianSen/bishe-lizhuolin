package MODEL;
import java.util.HashMap;


public class cart {

	//购物车：书名、单价、数量、总价
	private String bnameString;
	private double price;
	private int count;
	private double totalP;
	private HashMap<book, Integer> books;
	public String getBnameString() {
		return bnameString;
	}
	public void setBnameString(String bnameString) {
		this.bnameString = bnameString;
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
	public double getTotalP() {
		return totalP;
	}
	public void setTotalP(double totalP) {
		this.totalP = totalP;
	}
	
	public HashMap<book, Integer> getBooks() {
		return books;
	}
	public void setBooks(HashMap<book, Integer> books) {
		this.books = books;
	}
	public cart() {
		super();
		// TODO Auto-generated constructor stub
	}

	public boolean addGoodsInCart(book item,int number){
		System.out.println(item);
		if(books==null) {
			books=new HashMap<book, Integer>();
			books.put(item, number);
		}
		else if(books.containsKey(item)){				
			books.put(item, books.get(item)+number);
		}
		else{
			books.put(item, number);
		}
		System.out.println(books);
		getTotalP();		//重新计算购物车总金额
		return true;
	}
	public cart(String bnameString, double price, int count, double totalP, HashMap<book, Integer> books) {
		super();
		this.bnameString = bnameString;
		this.price = price;
		this.count = count;
		this.totalP = totalP;
		this.books = books;
	}
	@Override
	public String toString() {
		return "cart [bnameString=" + bnameString + ", price=" + price + ", count=" + count + ", totalP=" + totalP
				+ ", books=" + books + "]";
	}
	
}

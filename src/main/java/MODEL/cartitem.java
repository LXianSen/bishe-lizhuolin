package MODEL;

public class cartitem {
	private book book;
	private Integer count;
	private double sump;
	public book getBook() {
		return book;
	}
	public void setBook(book book) {
		this.book = book;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public double getSump() {
		return sump;
	}
	public void setSump(double sump) {
		this.sump = sump;
	}
	@Override
	public String toString() {
		return "cartitem [book=" + book + ", count=" + count + ", sump=" + sump + "]";
	}
	public cartitem(MODEL.book book, Integer count, double sump) {
		super();
		this.book = book;
		this.count = count;
		this.sump = sump;
	}
	public cartitem() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}

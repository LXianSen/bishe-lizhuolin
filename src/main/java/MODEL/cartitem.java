
package MODEL;

public class cartitem {

	//ÓÃ»§id¡¢Êé¼®×Ö¶Î
	private String id;
	private String isbn;
	private int count;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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

	@Override
	public String toString() {
		return "cartitem [id=" + id + ", isbn=" + isbn + ", count=" + count + "]";
	}
	public cartitem(String id, String isbn, int count) {
		super();
		this.id = id;
		this.isbn = isbn;
		this.count = count;
	}
	public cartitem() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	}


package MODEL;

public class cartitem {

	//ÓÃ»§id¡¢Êé¼®×Ö¶Î
	private String userid;
	private String ISBN;
	private double bprice;
	private int count;
	private double bdiscount;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
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
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public double getBdiscount() {
		return bdiscount;
	}
	public void setBdiscount(double bdiscount) {
		this.bdiscount = bdiscount;
	}
	@Override
	public String toString() {
		return "cartitem [userid=" + userid + ", ISBN=" + ISBN + ", bprice=" + bprice + ", count=" + count
				+ ", bdiscount=" + bdiscount + "]";
	}
	public cartitem(String userid, String iSBN, double bprice, int count, double bdiscount) {
		super();
		this.userid = userid;
		ISBN = iSBN;
		this.bprice = bprice;
		this.count = count;
		this.bdiscount = bdiscount;
	}
	public cartitem() {
		super();
		// TODO Auto-generated constructor stub
	}

	}

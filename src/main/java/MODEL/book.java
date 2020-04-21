package MODEL;

import java.sql.Date;

public class book {
	//编号、图片、书名、作者、出版商、出版日期、单价、折扣、简介、库存、类别
	private String ISBN;
	private String img;
	private String bname;
	private String bauthor;
	private String bpublish;
	private Date bdate;
	private double bprice;
	private double bdiscount;
	private String synopsis;
	private long stock;
	private String sontype;
	
	
	public String getISBN() {
		return ISBN;
	}
	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBauthor() {
		return bauthor;
	}
	public void setBauthor(String bauthor) {
		this.bauthor = bauthor;
	}
	public String getBpublish() {
		return bpublish;
	}
	public void setBpublish(String bpublish) {
		this.bpublish = bpublish;
	}
	public Date getBdate() {
		return bdate;
	}
	public void setBdate(Date bdate) {
		this.bdate = bdate;
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
	public String getSynopsis() {
		return synopsis;
	}
	public void setSynopsis(String synopsis) {
		this.synopsis = synopsis;
	}
	public long getStock() {
		return stock;
	}
	public void setStock(long stock) {
		this.stock = stock;
	}
	public String getsontype() {
		return sontype;
	}
	public void setsontype(String sontype) {
		this.sontype = sontype;
	}
	@Override
	public String toString() {
		return "book [ISBN=" + ISBN + ", img=" + img + ", bname=" + bname + ", bauthor=" + bauthor + ", bpublish="
				+ bpublish + ", bdate=" + bdate + ", bprice=" + bprice + ", bdiscount=" + bdiscount + ", synopsis="
				+ synopsis + ", stock=" + stock + ", sontype=" + sontype + "]";
	}
	public book(String iSBN, String img, String bname, String bauthor, String bpublish, Date bdate, double bprice,
			double bdiscount, String synopsis, long stock, String sontype) {
		super();
		ISBN = iSBN;
		this.img = img;
		this.bname = bname;
		this.bauthor = bauthor;
		this.bpublish = bpublish;
		this.bdate = bdate;
		this.bprice = bprice;
		this.bdiscount = bdiscount;
		this.synopsis = synopsis;
		this.stock = stock;
		this.sontype = sontype;
	}
	public book() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}

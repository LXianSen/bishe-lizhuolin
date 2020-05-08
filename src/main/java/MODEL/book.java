package MODEL;

import java.math.BigDecimal;
import java.sql.Date;

public class book {
	//编号、图片、书名、作者、出版商、出版日期、单价、折扣、简介、类别
	private String ISBN;
	private String img1;
	private String img2;
	private String img3;
	private String img4;
	private String img5;
	private String bname;
	private String bauthor;
	private String bpublish;
	private Date bdate;
	private double bprice;
	private double bdiscount;
	private String synopsis;
	private String sontype;
	public String getISBN() {
		return ISBN;
	}
	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}
	public String getImg1() {
		return img1;
	}
	public void setImg1(String img1) {
		this.img1 = img1;
	}
	public String getImg2() {
		return img2;
	}
	public void setImg2(String img2) {
		this.img2 = img2;
	}
	public String getImg3() {
		return img3;
	}
	public void setImg3(String img3) {
		this.img3 = img3;
	}
	public String getImg4() {
		return img4;
	}
	public void setImg4(String img4) {
		this.img4 = img4;
	}
	public String getImg5() {
		return img5;
	}
	public void setImg5(String img5) {
		this.img5 = img5;
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
	public String getSontype() {
		return sontype;
	}
	public void setSontype(String sontype) {
		this.sontype = sontype;
	}
	@Override
	public String toString() {
		return "book [ISBN=" + ISBN + ", img1=" + img1 + ", img2=" + img2 + ", img3=" + img3 + ", img4=" + img4
				+ ", img5=" + img5 + ", bname=" + bname + ", bauthor=" + bauthor + ", bpublish=" + bpublish + ", bdate="
				+ bdate + ", bprice=" + bprice + ", bdiscount=" + bdiscount + ", synopsis=" + synopsis + ", sontype="
				+ sontype + "]";
	}
	public book(String iSBN, String img1, String img2, String img3, String img4, String img5, String bname,
			String bauthor, String bpublish, Date bdate, double bprice, double bdiscount, String synopsis,
			String sontype) {
		super();
		ISBN = iSBN;
		this.img1 = img1;
		this.img2 = img2;
		this.img3 = img3;
		this.img4 = img4;
		this.img5 = img5;
		this.bname = bname;
		this.bauthor = bauthor;
		this.bpublish = bpublish;
		this.bdate = bdate;
		this.bprice = bprice;
		this.bdiscount = bdiscount;
		this.synopsis = synopsis;
		this.sontype = sontype;
	}
	public book() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}

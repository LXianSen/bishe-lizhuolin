package MODEL;

public class Booktype {
	//�����롢����һ��Ŀ¼������Ŀ¼
	private String typeid;
	private String fathertype;
	private String sontype;
	public String getTypeid() {
		return typeid;
	}
	public void setTypeid(String typeid) {
		this.typeid = typeid;
	}
	public String getFathertype() {
		return fathertype;
	}
	public void setFathertype(String fathertype) {
		this.fathertype = fathertype;
	}
	public String getSontype() {
		return sontype;
	}
	public void setSontype(String sontype) {
		this.sontype = sontype;
	}
	@Override
	public String toString() {
		return "Booktype [typeid=" + typeid + ", fathertype=" + fathertype + ", sontype=" + sontype + "]";
	}
	public Booktype(String typeid, String fathertype, String sontype) {
		super();
		this.typeid = typeid;
		this.fathertype = fathertype;
		this.sontype = sontype;
	}
	public Booktype() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}

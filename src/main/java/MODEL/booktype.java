package MODEL;

public class booktype {
	//类别编码、所属一级目录、二级目录
	private String typeid;
	private String fathertype;
	private String sontype;
	private String typeimg;
	public booktype(String typeid, String fathertype, String sontype, String typeimg) {
		super();
		this.typeid = typeid;
		this.fathertype = fathertype;
		this.sontype = sontype;
		this.typeimg = typeimg;
	}
	public String getTypeimg() {
		return typeimg;
	}
	public void setTypeimg(String typeimg) {
		this.typeimg = typeimg;
	}
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
		return "booktype [typeid=" + typeid + ", fathertype=" + fathertype + ", sontype=" + sontype + ", typeimg="
				+ typeimg + "]";
	}

	public booktype() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}

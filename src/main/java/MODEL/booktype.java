package MODEL;

public class booktype {
	//������һ��Ŀ¼������Ŀ¼
	private String fathertype;
	private String sontype;
	private String typeimg;
	public booktype(String fathertype, String sontype, String typeimg) {
		super();
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
		return "booktype [fathertype=" + fathertype + ", sontype=" + sontype + ", typeimg="
				+ typeimg + "]";
	}

	public booktype() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}

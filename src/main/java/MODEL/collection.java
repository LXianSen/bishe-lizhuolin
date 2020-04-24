package MODEL;

public class collection {
	private String userid;
	private String ISBN;
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
	@Override
	public String toString() {
		return "collection [userid=" + userid + ", ISBN=" + ISBN + "]";
	}
	public collection(String userid, String iSBN) {
		super();
		this.userid = userid;
		ISBN = iSBN;
	}
	public collection() {
		super();
		// TODO Auto-generated constructor stub
	}

}

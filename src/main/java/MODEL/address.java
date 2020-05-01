package MODEL;

public class address {
	//地址编号（自增）、用户id(外键)、省、市、县、详细地址、联系人、联系电话
	private String addressid;
	private String userid;
	private String province;
	private String city;
	private String county;
	private String details;
	private String contact;
	private String tel;
	private String isdefault;
	public address(String addressid, String userid, String province, String city, String county, String details,
			String contact, String tel, String isdefault) {
		super();
		this.addressid = addressid;
		this.userid = userid;
		this.province = province;
		this.city = city;
		this.county = county;
		this.details = details;
		this.contact = contact;
		this.tel = tel;
		this.isdefault = isdefault;
	}
	public String getIsdefault() {
		return isdefault;
	}
	public void setIsdefault(String isdefault) {
		this.isdefault = isdefault;
	}
	public String getAddressid() {
		return addressid;
	}
	public void setAddressid(String addressid) {
		this.addressid = addressid;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCounty() {
		return county;
	}
	public void setCounty(String county) {
		this.county = county;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	@Override
	public String toString() {
		return "address [addressid=" + addressid + ", userid=" + userid + ", province=" + province + ", city=" + city
				+ ", county=" + county + ", details=" + details + ", contact=" + contact + ", tel=" + tel
				+ ", isdefault=" + isdefault + "]";
	}

	public address() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}

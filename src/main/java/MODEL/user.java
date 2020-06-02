package MODEL;

public class user {
	//±àºÅ
	private String userid;
	private String username;
	private String pwd;
	private String email;
	private String phone;
	private String gender;
	private String permission;
	private String lastview;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPermission() {
		return permission;
	}
	public void setPermission(String permission) {
		this.permission = permission;
	}
	public String getLastview() {
		return lastview;
	}
	public void setLastview(String lastview) {
		this.lastview = lastview;
	}
	@Override
	public String toString() {
		return "user [userid=" + userid + ", username=" + username + ", pwd=" + pwd + ", email=" + email + ", phone="
				+ phone + ", gender=" + gender + ", permission=" + permission + ", lastview=" + lastview + "]";
	}
	public user(String userid, String username, String pwd, String email, String phone, String gender,
			String permission, String lastview) {
		super();
		this.userid = userid;
		this.username = username;
		this.pwd = pwd;
		this.email = email;
		this.phone = phone;
		this.gender = gender;
		this.permission = permission;
		this.lastview = lastview;
	}
	public user() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}

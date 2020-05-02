package MODEL;

public class user {
	//±àºÅ
	private String userid;
	private String username;
	private String pwd;
	private String email;
	private String phone;
	private String gender;
	
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

	public user() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "user [userid=" + userid + ", username=" + username + ", pwd=" + pwd + ", email=" + email + ", phone=" + phone
				+ ", gender=" + gender + "]";
	}
	public user(String userid, String username, String pwd, String email, String phone, String gender) {
		super();
		this.userid = userid;
		this.username = username;
		this.pwd = pwd;
		this.email = email;
		this.phone = phone;
		this.gender = gender;
	}
	public String getuserId() {
		return userid;
	}
	public void setuserId(String userid) {
		this.userid = userid;
	}
	public String getuserName() {
		return username;
	}
	public void setuserName(String username) {
		this.username = username;
	}
	
	public String getPwd() {
		return pwd;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
}

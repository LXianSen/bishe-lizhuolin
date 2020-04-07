package MODEL;

public class user {
	//±àºÅ
	private String id;
	private String name;
	private String pwd;
	private String email;
	private String phone;
	private String gender;
	
	public user() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "user [id=" + id + ", name=" + name + ", pwd=" + pwd + ", email=" + email + ", phone=" + phone
				+ ", gender=" + gender + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public user(String id, String name, String pwd, String email, String phone, String gender) {
		super();
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.email = email;
		this.phone = phone;
		this.gender = gender;
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

package MODEL;

public class user {
	private String id;
	private String name;
	private String pwd;
	private String email;
	private String gender;
	
	public user() {
		super();
		// TODO Auto-generated constructor stub
	}
	public user(String id, String name, String pwd, String email, String gender) {
		super();
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.email = email;
		this.gender = gender;
	}
	@Override
	public String toString() {
		return "user [id=" + id + ", name=" + name + ", pwd=" + pwd + ", email=" + email + ", gender=" + gender + "]";
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
}

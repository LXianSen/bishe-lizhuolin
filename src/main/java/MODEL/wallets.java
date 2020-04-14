package MODEL;

public class wallets {

	//用户id、用户姓名、钱包余额
	private String userid;
	private String username;
	private double balance;
	public String getuserId() {
		return userid;
	}
	public void setuserId(String id) {
		this.userid = id;
	}
	public String geusertName() {
		return username;
	}
	public void setName(String name) {
		this.username = name;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	public wallets() {
		super();
		// TODO Auto-generated constructor stub
	}
	public wallets(String userid, String username, double balance) {
		super();
		this.userid = userid;
		this.username = username;
		this.balance = balance;
	}
	@Override
	public String toString() {
		return "wallets [userid=" + userid + ", name=" + username + ", balance=" + balance + "]";
	}
}

package MODEL;

import java.util.Map;

public class cart {
	//”√ªßid£¨ ÈºÆ
	private Map<Integer, Map> carMap; 
	private double finalprice;
	private double finaldiscountprice;
	public Map<Integer, Map> getCarMap() {
		return carMap;
	}
	public void setCarMap(Map<Integer, Map> carMap) {
		this.carMap = carMap;
	}
	public double getFinalprice() {
		return finalprice;
	}
	public void setFinalprice(double finalprice) {
		this.finalprice = finalprice;
	}
	public double getFinaldiscountprice() {
		return finaldiscountprice;
	}
	public void setFinaldiscountprice(double finaldiscountprice) {
		this.finaldiscountprice = finaldiscountprice;
	}
	@Override
	public String toString() {
		return "cart [carMap=" + carMap + ", finalprice=" + finalprice + ", finaldiscountprice=" + finaldiscountprice
				+ "]";
	}
	public cart(Map<Integer, Map> carMap, double finalprice, double finaldiscountprice) {
		super();
		this.carMap = carMap;
		this.finalprice = finalprice;
		this.finaldiscountprice = finaldiscountprice;
	}
	public cart() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
/*
 * import java.util.HashMap; import java.util.Iterator; import java.util.Map;
 * import java.util.Set;
 * 
 * public class cart { private Map<Integer, cartitem> carMap; private double
 * finalprice;
 * 
 * public cart() { super(); // TODO Auto-generated constructor stub }
 * 
 * public cart(Map<Integer, cartitem> carMap, double finalprice) { super();
 * this.carMap = carMap; this.finalprice = finalprice; }
 * 
 * @Override public String toString() { return "cart [carMap=" + carMap +
 * ", finalprice=" + finalprice + "]"; }
 * 
 * public Map<Integer, cartitem> getCarMap() { return carMap; }
 * 
 * public void setCarMap(Map<Integer, cartitem> carMap) { this.carMap = carMap;
 * }
 * 
 * public double getPrice() { return finalprice; }
 * 
 * public void setPrice(double finalprice) { this.finalprice = finalprice; } }
 */
package MODEL;

import java.util.Map;

public class cart {
	//”√ªßid£¨ ÈºÆ
	private Map<Integer, cartitem> carMap; 
	private double finalprice;
	
	
	
	public Map<Integer, cartitem> getCarMap() {
		return carMap;
	}
	public void setCarMap(Map<Integer, cartitem> carMap) {
		this.carMap = carMap;
	}
	public double getfinalprice() {
		return finalprice;
	}
	public void setfinalprice(double finalprice) {
		this.finalprice = finalprice;
	}
	@Override
	public String toString() {
		return "cart [carMap=" + carMap + ", finalprice=" + finalprice + "]";
	}
	public cart(Map<Integer, cartitem> carMap, double finalprice) {
		super();
		this.carMap = carMap;
		this.finalprice = finalprice;
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
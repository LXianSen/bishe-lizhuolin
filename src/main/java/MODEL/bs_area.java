package MODEL;

import java.sql.Date;
import java.sql.Timestamp;

public class bs_area {
	private int AREA_ID;//自增列
	private String AREA_CODE;//区域代码
	private String CITY_CODE;//父级市代码
	private String AREA_NAME;//市名称
	private String SHORT_NAME;//简称
	private String LNG;//经度
	private String LAT;//纬度
	private int SORT;//排序
	private Timestamp GMT_CREATE;//创建时间
	private Timestamp GMT_MODIFIED;//修改时间
	private String MEMO;//备注
	private int DATA_STATE;//
	private String TENANT_CODE;//租户id
	
	public int getAREA_ID() {
		return AREA_ID;
	}
	public void setAREA_ID(int aREA_ID) {
		AREA_ID = aREA_ID;
	}
	public String getAREA_CODE() {
		return AREA_CODE;
	}
	public void setAREA_CODE(String aREA_CODE) {
		AREA_CODE = aREA_CODE;
	}
	public String getCITY_CODE() {
		return CITY_CODE;
	}
	public void setCITY_CODE(String cITY_CODE) {
		CITY_CODE = cITY_CODE;
	}
	public String getAREA_NAME() {
		return AREA_NAME;
	}
	public void setAREA_NAME(String aREA_NAME) {
		AREA_NAME = aREA_NAME;
	}
	public String getSHORT_NAME() {
		return SHORT_NAME;
	}
	public void setSHORT_NAME(String sHORT_NAME) {
		SHORT_NAME = sHORT_NAME;
	}
	public String getLNG() {
		return LNG;
	}
	public void setLNG(String lNG) {
		LNG = lNG;
	}
	public String getLAT() {
		return LAT;
	}
	public void setLAT(String lAT) {
		LAT = lAT;
	}
	public int getSORT() {
		return SORT;
	}
	public void setSORT(int sORT) {
		SORT = sORT;
	}
	public Timestamp getGMT_CREATE() {
		return GMT_CREATE;
	}
	public void setGMT_CREATE(Timestamp gMT_CREATE) {
		GMT_CREATE = gMT_CREATE;
	}
	public Timestamp getGMT_MODIFIED() {
		return GMT_MODIFIED;
	}
	public void setGMT_MODIFIED(Timestamp gMT_MODIFIED) {
		GMT_MODIFIED = gMT_MODIFIED;
	}
	public String getMEMO() {
		return MEMO;
	}
	public void setMEMO(String mEMO) {
		MEMO = mEMO;
	}
	public int getDATA_STATE() {
		return DATA_STATE;
	}
	public void setDATA_STATE(int dATA_STATE) {
		DATA_STATE = dATA_STATE;
	}
	public String getTENANT_CODE() {
		return TENANT_CODE;
	}
	public void setTENANT_CODE(String tENANT_CODE) {
		TENANT_CODE = tENANT_CODE;
	}
	@Override
	public String toString() {
		return "bs_area [AREA_ID=" + AREA_ID + ", AREA_CODE=" + AREA_CODE + ", CITY_CODE=" + CITY_CODE + ", AREA_NAME="
				+ AREA_NAME + ", SHORT_NAME=" + SHORT_NAME + ", LNG=" + LNG + ", LAT=" + LAT + ", SORT=" + SORT
				+ ", GMT_CREATE=" + GMT_CREATE + ", GMT_MODIFIED=" + GMT_MODIFIED + ", MEMO=" + MEMO + ", DATA_STATE="
				+ DATA_STATE + ", TENANT_CODE=" + TENANT_CODE + "]";
	}
	public bs_area(int aREA_ID, String aREA_CODE, String cITY_CODE, String aREA_NAME, String sHORT_NAME, String lNG,
			String lAT, int sORT, Timestamp gMT_CREATE, Timestamp gMT_MODIFIED, String mEMO, int dATA_STATE, String tENANT_CODE) {
		super();
		AREA_ID = aREA_ID;
		AREA_CODE = aREA_CODE;
		CITY_CODE = cITY_CODE;
		AREA_NAME = aREA_NAME;
		SHORT_NAME = sHORT_NAME;
		LNG = lNG;
		LAT = lAT;
		SORT = sORT;
		GMT_CREATE = gMT_CREATE;
		GMT_MODIFIED = gMT_MODIFIED;
		MEMO = mEMO;
		DATA_STATE = dATA_STATE;
		TENANT_CODE = tENANT_CODE;
	}
	public bs_area() {
		super();
		// TODO Auto-generated constructor stub
	}
 
	
}

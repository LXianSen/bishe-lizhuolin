package MODEL;

import java.sql.Date;

public class bs_city {
	private int CITY_ID;//自增列
	private String CITY_CODE;//市代码
	private String CITY_NAME;//市名称
	private String SHORT_NAME;//简称
	private String PROVINCE_CODE;//省代码
	private String LNG;//经度
	private String LAT;//纬度
	private int SORT;//排序
	private Date GMT_CREATE;//创建时间
	private Date GMT_MODIFIED;//修改时间
	private String MEMO;//备注
	private int DATA_STATE;//状态
	private String TENANT_CODE;//租户Id
	public int getCITY_ID() {
		return CITY_ID;
	}
	public void setCITY_ID(int cITY_ID) {
		CITY_ID = cITY_ID;
	}
	public String getCITY_CODE() {
		return CITY_CODE;
	}
	public void setCITY_CODE(String cITY_CODE) {
		CITY_CODE = cITY_CODE;
	}
	public String getCITY_NAME() {
		return CITY_NAME;
	}
	public void setCITY_NAME(String cITY_NAME) {
		CITY_NAME = cITY_NAME;
	}
	public String getSHORT_NAME() {
		return SHORT_NAME;
	}
	public void setSHORT_NAME(String sHORT_NAME) {
		SHORT_NAME = sHORT_NAME;
	}
	public String getPROVINCE_CODE() {
		return PROVINCE_CODE;
	}
	public void setPROVINCE_CODE(String pROVINCE_CODE) {
		PROVINCE_CODE = pROVINCE_CODE;
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
	public Date getGMT_CREATE() {
		return GMT_CREATE;
	}
	public void setGMT_CREATE(Date gMT_CREATE) {
		GMT_CREATE = gMT_CREATE;
	}
	public Date getGMT_MODIFIED() {
		return GMT_MODIFIED;
	}
	public void setGMT_MODIFIED(Date gMT_MODIFIED) {
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
		return "bs_city [CITY_ID=" + CITY_ID + ", CITY_CODE=" + CITY_CODE + ", CITY_NAME=" + CITY_NAME + ", SHORT_NAME="
				+ SHORT_NAME + ", PROVINCE_CODE=" + PROVINCE_CODE + ", LNG=" + LNG + ", LAT=" + LAT + ", SORT=" + SORT
				+ ", GMT_CREATE=" + GMT_CREATE + ", GMT_MODIFIED=" + GMT_MODIFIED + ", MEMO=" + MEMO + ", DATA_STATE="
				+ DATA_STATE + ", TENANT_CODE=" + TENANT_CODE + "]";
	}
	public bs_city(int cITY_ID, String cITY_CODE, String cITY_NAME, String sHORT_NAME, String pROVINCE_CODE, String lNG,
			String lAT, int sORT, Date gMT_CREATE, Date gMT_MODIFIED, String mEMO, int dATA_STATE, String tENANT_CODE) {
		super();
		CITY_ID = cITY_ID;
		CITY_CODE = cITY_CODE;
		CITY_NAME = cITY_NAME;
		SHORT_NAME = sHORT_NAME;
		PROVINCE_CODE = pROVINCE_CODE;
		LNG = lNG;
		LAT = lAT;
		SORT = sORT;
		GMT_CREATE = gMT_CREATE;
		GMT_MODIFIED = gMT_MODIFIED;
		MEMO = mEMO;
		DATA_STATE = dATA_STATE;
		TENANT_CODE = tENANT_CODE;
	}
	public bs_city() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}

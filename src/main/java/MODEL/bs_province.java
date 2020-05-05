package MODEL;

import java.sql.Date;
import java.sql.Timestamp;

public class bs_province {
 private int PROVINCE_ID;//自增列
 private String PROVINCE_CODE;//省份代码
 private String PROVINCE_NAME;//省份名称
 private String SHORT_NAME;//简称
 private String LNG;//经度
 private String LAT;//纬度
 private int SORT;//排序
 private Timestamp GMT_CREATE;//创建时间
 private Timestamp GMT_MODIFIED;//修改时间
 private String MEMO;//备注
 private int DATA_STATE;//状态
 private String TENANT_CODE;//租户id
public int getPROVINCE_ID() {
	return PROVINCE_ID;
}
public void setPROVINCE_ID(int pROVINCE_ID) {
	PROVINCE_ID = pROVINCE_ID;
}
public String getPROVINCE_CODE() {
	return PROVINCE_CODE;
}
public void setPROVINCE_CODE(String pROVINCE_CODE) {
	PROVINCE_CODE = pROVINCE_CODE;
}
public String getPROVINCE_NAME() {
	return PROVINCE_NAME;
}
public void setPROVINCE_NAME(String pROVINCE_NAME) {
	PROVINCE_NAME = pROVINCE_NAME;
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
	return "bs_province [PROVINCE_ID=" + PROVINCE_ID + ", PROVINCE_CODE=" + PROVINCE_CODE + ", PROVINCE_NAME="
			+ PROVINCE_NAME + ", SHORT_NAME=" + SHORT_NAME + ", LNG=" + LNG + ", LAT=" + LAT + ", SORT=" + SORT
			+ ", GMT_CREATE=" + GMT_CREATE + ", GMT_MODIFIED=" + GMT_MODIFIED + ", MEMO=" + MEMO + ", DATA_STATE="
			+ DATA_STATE + ", TENANT_CODE=" + TENANT_CODE + "]";
}
public bs_province(int pROVINCE_ID, String pROVINCE_CODE, String pROVINCE_NAME, String sHORT_NAME, String lNG,
		String lAT, int sORT, Timestamp gMT_CREATE, Timestamp gMT_MODIFIED, String mEMO, int dATA_STATE, String tENANT_CODE) {
	super();
	PROVINCE_ID = pROVINCE_ID;
	PROVINCE_CODE = pROVINCE_CODE;
	PROVINCE_NAME = pROVINCE_NAME;
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
public bs_province() {
	super();
	// TODO Auto-generated constructor stub
}
 
}

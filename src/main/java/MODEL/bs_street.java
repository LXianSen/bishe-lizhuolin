package MODEL;

import java.sql.Date;

public class bs_street {
	private int STREET_ID;//����id
	private String STREET_CODE;//�ֵ�����
	private String AREA_CODE;//����������
	private String STREET_NAME;//�ֵ�����
	private String SHORT_NAME;//���
	private String LNG;//����
	private String LAT;//γ��
	private int SORT;//����
	private Date GMT_CREATE;//����ʱ��
	private Date GMT_MODIFIED;//�޸�ʱ��
	private String MEMO;//��ע
	private int DATA_STATE;//״̬
	private String TENANT_CODE;//�⻧id
	public int getSTREET_ID() {
		return STREET_ID;
	}
	public void setSTREET_ID(int sTREET_ID) {
		STREET_ID = sTREET_ID;
	}
	public String getSTREET_CODE() {
		return STREET_CODE;
	}
	public void setSTREET_CODE(String sTREET_CODE) {
		STREET_CODE = sTREET_CODE;
	}
	public String getAREA_CODE() {
		return AREA_CODE;
	}
	public void setAREA_CODE(String aREA_CODE) {
		AREA_CODE = aREA_CODE;
	}
	public String getSTREET_NAME() {
		return STREET_NAME;
	}
	public void setSTREET_NAME(String sTREET_NAME) {
		STREET_NAME = sTREET_NAME;
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
		return "bs_street [STREET_ID=" + STREET_ID + ", STREET_CODE=" + STREET_CODE + ", AREA_CODE=" + AREA_CODE
				+ ", STREET_NAME=" + STREET_NAME + ", SHORT_NAME=" + SHORT_NAME + ", LNG=" + LNG + ", LAT=" + LAT
				+ ", SORT=" + SORT + ", GMT_CREATE=" + GMT_CREATE + ", GMT_MODIFIED=" + GMT_MODIFIED + ", MEMO=" + MEMO
				+ ", DATA_STATE=" + DATA_STATE + ", TENANT_CODE=" + TENANT_CODE + "]";
	}
	public bs_street(int sTREET_ID, String sTREET_CODE, String aREA_CODE, String sTREET_NAME, String sHORT_NAME,
			String lNG, String lAT, int sORT, Date gMT_CREATE, Date gMT_MODIFIED, String mEMO, int dATA_STATE,
			String tENANT_CODE) {
		super();
		STREET_ID = sTREET_ID;
		STREET_CODE = sTREET_CODE;
		AREA_CODE = aREA_CODE;
		STREET_NAME = sTREET_NAME;
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
	public bs_street() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}

package kr.or.ddit.ott.lkhis.vo;

import java.sql.Date;

public class LkhisVO {
	
	private String lkhisNum;
	private String memNum;
	private String vdodtlNum;
	private Date lkhisDown;
	
	
	public LkhisVO() {}


	public LkhisVO(String lkhisNum, String memNum, String vdodtlNum, Date lkhisDown) {
		super();
		this.lkhisNum = lkhisNum;
		this.memNum = memNum;
		this.vdodtlNum = vdodtlNum;
		this.lkhisDown = lkhisDown;
	}


	public String getLkhisNum() {
		return lkhisNum;
	}


	public void setLkhisNum(String lkhisNum) {
		this.lkhisNum = lkhisNum;
	}


	public String getMemNum() {
		return memNum;
	}


	public void setMemNum(String memNum) {
		this.memNum = memNum;
	}


	public String getVdodtlNum() {
		return vdodtlNum;
	}


	public void setVdodtlNum(String vdodtlNum) {
		this.vdodtlNum = vdodtlNum;
	}


	public Date getLkhisDown() {
		return lkhisDown;
	}


	public void setLkhisDown(Date lkhisDown) {
		this.lkhisDown = lkhisDown;
	}


	@Override
	public String toString() {
		return "LkhisVO [lkhisNum=" + lkhisNum + ", memNum=" + memNum + ", vdodtlNum=" + vdodtlNum + ", lkhisDown="
				+ lkhisDown + "]";
	}


	
}

package kr.or.ddit.ott.wachis.vo;

import java.sql.Date;

public class WacHisVO {
	private String wachisNum;
	private String memNum;
	private String vodtlNum;
	private Date wachisDtus;

	public WacHisVO() {}

	public WacHisVO(String wachisNum, String memNum, String vodtlNum, Date wachisDtus) {
		super();
		this.wachisNum = wachisNum;
		this.memNum = memNum;
		this.vodtlNum = vodtlNum;
		this.wachisDtus = wachisDtus;
	}

	public String getWachisNum() {
		return wachisNum;
	}

	public void setWachisNum(String wachisNum) {
		this.wachisNum = wachisNum;
	}

	public String getMemNum() {
		return memNum;
	}

	public void setMemNum(String memNum) {
		this.memNum = memNum;
	}

	public String getVodtlNum() {
		return vodtlNum;
	}

	public void setVodtlNum(String vodtlNum) {
		this.vodtlNum = vodtlNum;
	}

	public Date getWachisDtus() {
		return wachisDtus;
	}

	public void setWachisDtus(Date wachisDtus) {
		this.wachisDtus = wachisDtus;
	}

	@Override
	public String toString() {
		return "WacHisVO [wachisNum=" + wachisNum + ", memNum=" + memNum + ", vodtlNum=" + vodtlNum + ", wachisDtus="
				+ wachisDtus + "]";
	}

	
	
}

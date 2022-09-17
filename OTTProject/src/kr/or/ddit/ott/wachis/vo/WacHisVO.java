package kr.or.ddit.ott.wachis.vo;

import java.sql.Date;

public class WacHisVO {
	private String wachisNum;
	private Date wachisDtus;

	public WacHisVO() {}

	public WacHisVO(String wachisNum, Date wachisDtus) {
		super();
		this.wachisNum = wachisNum;
		this.wachisDtus = wachisDtus;
	}

	public String getWachisNum() {
		return wachisNum;
	}

	public void setWachisNum(String wachisNum) {
		this.wachisNum = wachisNum;
	}

	public Date getWachisDtus() {
		return wachisDtus;
	}

	public void setWachisDtus(Date wachisDtus) {
		this.wachisDtus = wachisDtus;
	}

	@Override
	public String toString() {
		return "WacHisVO [wachisNum=" + wachisNum + ", wachisDtus=" + wachisDtus + "]";
	}
	
}

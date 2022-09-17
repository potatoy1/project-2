package kr.or.ddit.ott.lkhis.vo;

import java.sql.Date;

public class LkhisVO {
	
	private String lkhisNum;
	private Date lkhisDown;
	
	
	public LkhisVO() {}

	public LkhisVO(String lkhisNum, Date lkhisDown) {
		super();
		this.lkhisNum = lkhisNum;
		this.lkhisDown = lkhisDown;
	}

	public String getLkhisNum() {
		return lkhisNum;
	}

	public void setLkhisNum(String lkhisNum) {
		this.lkhisNum = lkhisNum;
	}

	public Date getLkhisDown() {
		return lkhisDown;
	}

	public void setLkhisDown(Date lkhisDown) {
		this.lkhisDown = lkhisDown;
	}

	@Override
	public String toString() {
		return "LikeHisVO [lkhisNum=" + lkhisNum + ", lkhisDown=" + lkhisDown + "]";
	}
	
}

package kr.or.ddit.ott.wislist.vo;

public class WisListVO {
	private String wislistNum;
	private String wislistDate;

	public WisListVO() {}

	public WisListVO(String wislistNum, String wislistDate) {
		super();
		this.wislistNum = wislistNum;
		this.wislistDate = wislistDate;
	}

	public String getWislistNum() {
		return wislistNum;
	}

	public void setWislistNum(String wislistNum) {
		this.wislistNum = wislistNum;
	}

	public String getWislistDate() {
		return wislistDate;
	}

	public void setWislistDate(String wislistDate) {
		this.wislistDate = wislistDate;
	}

	@Override
	public String toString() {
		return "WisListVO [wislistNum=" + wislistNum + ", wislistDate=" + wislistDate + "]";
	}
	
}

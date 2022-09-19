package kr.or.ddit.ott.wislist.vo;

public class WisListVO {
	private String wislistNum;
	private String memNum;
	private String vdodtlNum;
	private String wislistDate;

	public WisListVO() {}

	public WisListVO(String wislistNum, String memNum, String vdodtlNum, String wislistDate) {
		super();
		this.wislistNum = wislistNum;
		this.memNum = memNum;
		this.vdodtlNum = vdodtlNum;
		this.wislistDate = wislistDate;
	}

	public String getWislistNum() {
		return wislistNum;
	}

	public void setWislistNum(String wislistNum) {
		this.wislistNum = wislistNum;
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

	public String getWislistDate() {
		return wislistDate;
	}

	public void setWislistDate(String wislistDate) {
		this.wislistDate = wislistDate;
	}

	@Override
	public String toString() {
		return "WisListVO [wislistNum=" + wislistNum + ", memNum=" + memNum + ", vdodtlNum=" + vdodtlNum
				+ ", wislistDate=" + wislistDate + "]";
	}

	
	
}

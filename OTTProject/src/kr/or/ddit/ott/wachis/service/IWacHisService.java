package kr.or.ddit.ott.wachis.service;

import java.util.List;

import kr.or.ddit.ott.wachis.vo.WacHisVO;

public interface IWacHisService {
	public List<WacHisVO> getAllWacHisList();
	
	public int removeWacHis(String wachisNum);
}

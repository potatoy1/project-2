package kr.or.ddit.ott.wislist.service;

import java.util.List;

import kr.or.ddit.ott.wislist.vo.WisListVO;

public interface IWisListService {

	public int addWisList(WisListVO vo);
	
	public List<WisListVO> getAllWisList();

	public int removeWisList(String wislistNum);
	


}

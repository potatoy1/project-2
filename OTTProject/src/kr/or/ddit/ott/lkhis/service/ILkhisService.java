package kr.or.ddit.ott.lkhis.service;

import java.util.List;

import kr.or.ddit.ott.lkhis.vo.LkhisVO;


public interface ILkhisService {

	public int registerLkhis(LkhisVO vo);
	
	public List<LkhisVO> getAllLkhisList();

	public int removeLkhis(String lkhisNum);
	


}

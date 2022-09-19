package kr.or.ddit.ott.lkhis.dao;

import java.util.List;

import kr.or.ddit.ott.lkhis.vo.LkhisVO;

public interface ILkhisDAO {
	public int insert(LkhisVO vo);
	
	public List<LkhisVO> getAllLkhisList();

	public int delete(String lihisNum);
	
}

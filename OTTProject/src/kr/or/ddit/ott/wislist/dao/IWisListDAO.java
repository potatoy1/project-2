package kr.or.ddit.ott.wislist.dao;

import java.util.List;

import kr.or.ddit.ott.wislist.vo.WisListVO;

public interface IWisListDAO {
	public int insert(WisListVO vo);
	
	public List<WisListVO> getAllWisList();

	public int delete(String wislistNum);
	

}

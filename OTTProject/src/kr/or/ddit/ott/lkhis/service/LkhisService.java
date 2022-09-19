package kr.or.ddit.ott.lkhis.service;

import java.util.List;

import kr.or.ddit.ott.lkhis.dao.LkhisDAO;
import kr.or.ddit.ott.lkhis.vo.LkhisVO;

public class LkhisService implements ILkhisService {
	
private static ILkhisService lkhisService;
	
	private LkhisDAO lkhisDAO;
	
	private LkhisService() {
		lkhisDAO = LkhisDAO.getInstance();
	}
	
	public static ILkhisService getInstance() {
		if(lkhisService == null) {
			lkhisService = new LkhisService();
		}
		return lkhisService;
	}

	@Override
	public int registerLkhis(LkhisVO vo) {
		int cnt = lkhisDAO.insert(vo);
		return cnt;
	}

	@Override
	public List<LkhisVO> getAllLkhisList() {
		List<LkhisVO> lkhisList = lkhisDAO.getAllLkhisList();
		return lkhisList;
	}

	@Override
	public int removeLkhis(String lkhisNum) {
		int cnt = lkhisDAO.delete(lkhisNum);
		return cnt;
	}

	


	
}


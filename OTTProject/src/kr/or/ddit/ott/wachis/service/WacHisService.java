package kr.or.ddit.ott.wachis.service;

import java.util.List;

import kr.or.ddit.ott.wachis.dao.WacHisDAO;
import kr.or.ddit.ott.wachis.vo.WacHisVO;

public class WacHisService implements IWacHisService{

	private static IWacHisService wachisService;
	
	private WacHisDAO wachisDAO;
	
	private WacHisService() {
		wachisDAO = WacHisDAO.getInstance();
	}
	
	public static IWacHisService getInstance() {
		if(wachisService == null) {
			wachisService = new WacHisService();
		}
		return wachisService;
	}
	@Override
	public List<WacHisVO> getAllWacHisList() {
		List<WacHisVO> wachisList = wachisDAO.getAllWacHisList();
		return wachisList;
	}

	@Override
	public int removeWacHis(String wachisNum) {
		int cnt = wachisDAO.delete(wachisNum);
		return cnt;
	}

}

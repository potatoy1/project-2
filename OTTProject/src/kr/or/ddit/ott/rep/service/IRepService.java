package kr.or.ddit.ott.rep.service;

import kr.or.ddit.ott.rep.vo.RepVO;

public interface IRepService {
	
	public int registerReb(RepVO rv);
	
	public int modifyRep(RepVO rv);
	
	public int removeRep(String repNum);
	
	public RepVO getRep (String repNum);
	
	public boolean checkRep(String repNum);

}

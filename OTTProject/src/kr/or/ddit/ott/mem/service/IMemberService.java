package kr.or.ddit.ott.mem.service;

import kr.or.ddit.ott.mem.vo.MemberVO;

public interface IMemberService {

	public int registerMember(MemberVO mv);
	
	public int dupleEmail(String memEm);
	
	public MemberVO memberLogin(MemberVO mv);
	

}

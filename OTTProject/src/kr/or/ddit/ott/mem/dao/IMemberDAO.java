package kr.or.ddit.ott.mem.dao;

import kr.or.ddit.ott.mem.vo.MemberVO;

public interface IMemberDAO {

	public int membership(MemberVO mv);

	public int duplicateEmail(String memEm);
	
	public MemberVO login(MemberVO mv);
}

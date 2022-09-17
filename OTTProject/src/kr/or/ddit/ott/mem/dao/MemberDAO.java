package kr.or.ddit.ott.mem.dao;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.ott.mem.vo.MemberVO;
import util.MyBatisUtil;

public class MemberDAO implements IMemberDAO {

	private static IMemberDAO memDao;

	private SqlSession sqlSession;

	private MemberDAO() {
		sqlSession = MyBatisUtil.getInstance(true);
	}

	public static IMemberDAO getInstance() {
		if (memDao == null) {
			memDao = new MemberDAO();
		}

		return memDao;
	}

	// 회원가입
	public int membership(MemberVO mv) {

		int cnt = sqlSession.insert("member.membership", mv);

		return cnt;
	}

	// 이메일 중복확인
	public int duplicateEmail(String memEm) {

		int cnt = sqlSession.selectOne("member.duplicateEmail", memEm);

		return cnt;
	}

	// 로그인
	public MemberVO login(MemberVO mv) {

		MemberVO cnt = sqlSession.selectOne("member.login", mv);

		return cnt;
	}

//	// 비밀번호찾기
//	public int findPw(MemberVO mv) {
//
//		int cnt = sqlSession.selectOne("member.findPwMember", mv);
//
//		return cnt;
//	}
//
//	// 마이페이지 본인정보 수정
//	public int MyPageMember(MemberVO mv) {
//
//		int cnt = sqlSession.update("member.updateMember", mv);
//
//		return cnt;
//	}
//
//	// 회원 탈퇴
//	public int deleteMember(String memId) {
//
//		int cnt = sqlSession.delete("member.deleteMember", memId);
//
//		return cnt;
//	}
//
//	// 마이페이지 본인정보 확인
//	public List<MemberVO> MypageList() {
//
//		List<MemberVO> memList = sqlSession.selectList("member.MypageList");
//
//		return memList;
//	}

}

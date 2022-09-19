package kr.or.ddit.ott.wachis.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.ott.mem.vo.MemberVO;
import kr.or.ddit.ott.ntc.vo.NtcVO;
import kr.or.ddit.ott.wachis.vo.WacHisVO;
import util.MyBatisUtil;

public class WacHisDAO {

	private static WacHisDAO instance = new WacHisDAO();
	private SqlSession sqlSession;

	public static WacHisDAO getInstance() {
		return instance;
	}

	public WacHisDAO() {
		sqlSession = MyBatisUtil.getInstance(true);
	}


	// 전체 시청 내역
	public List<WacHisVO> getAllWacHisList() {
		List<WacHisVO> wachisList = sqlSession.selectList("wachis.getAllwachisList");
		return wachisList;
	}
	// 시청 내역 삭제
	public int delete(String wachisNum) {
		int cnt = sqlSession.delete("wachis.delete",wachisNum);
		return cnt;
	}
	

}

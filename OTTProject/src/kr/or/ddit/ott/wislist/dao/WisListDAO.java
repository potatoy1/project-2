package kr.or.ddit.ott.wislist.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.ott.wislist.vo.WisListVO;
import util.MyBatisUtil;

public class WisListDAO implements IWisListDAO {

	private static WisListDAO instance = new WisListDAO();
	private SqlSession sqlSession;

	public static WisListDAO getInstance() {
		return instance;
	}
    public WisListDAO() { 
       sqlSession = MyBatisUtil.getInstance(true);
    }
	
	public int insert(WisListVO vo) {
		int cnt = sqlSession.insert("wislist.insert", vo);
		return cnt;
	}
	
	public List<WisListVO> getAllWisList() {
		List<WisListVO> wisList = sqlSession.selectList("wislist.getAllWisList");
		return wisList;
	}
	
	public int delete(String wislistNum) {
		int cnt = sqlSession.delete("wislist.delete",wislistNum);
		return cnt;
	}

}

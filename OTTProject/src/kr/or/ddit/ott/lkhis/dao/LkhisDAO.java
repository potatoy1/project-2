package kr.or.ddit.ott.lkhis.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.ott.lkhis.vo.LkhisVO;
import util.MyBatisUtil;

public class LkhisDAO implements ILkhisDAO{

	private static LkhisDAO instance = new LkhisDAO();
	private SqlSession sqlSession;

	public static LkhisDAO getInstance() {
		return instance;
	}
    public LkhisDAO() { 
       sqlSession = MyBatisUtil.getInstance(true);
    }
	
    @Override
    public int insert(LkhisVO vo) {
    	int cnt = sqlSession.insert("lkhis.insert",vo);
		return cnt;
    }
	
	public List<LkhisVO> getAllLkhisList() {
		List<LkhisVO> lkhisList = sqlSession.selectList("lkhis.getAllLkhisList");
		return lkhisList;
	}
	
	public int delete(String lkhisNum) {
		int cnt = sqlSession.delete("lkhis.delete",lkhisNum);
		return cnt;
	}

}

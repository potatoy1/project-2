package comm.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import comm.vo.AtchFileVO;

public interface IAtchFileService {

	/**
	 * 첨부파일 목록을 저장하기 위한 메소드
	 * @param req Part정보를 꺼내기 위한 요청객체
	 * @return 첨부파일정보를 저장한  AtchFileVO객체
	 */
	public AtchFileVO saveAtchFileList(HttpServletRequest req);
	
	/**
	 * 첨부파일 목록 조회
	 * @param atchFileVO
	 * @return
	 */
	public List<AtchFileVO> getAtchFileList(AtchFileVO atchFileVO);
	
	/**
	 * 첨부파일 세부정보 조회
	 * @param atchFileVO
	 * @return
	 */
	public AtchFileVO getAtchFileDetail(AtchFileVO atchFileVO);
	
}

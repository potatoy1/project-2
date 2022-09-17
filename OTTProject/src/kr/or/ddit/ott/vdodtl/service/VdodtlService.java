package kr.or.ddit.ott.vdodtl.service;

import java.util.List;

import kr.or.ddit.ott.vdodtl.dao.VdodtlDAO;
import kr.or.ddit.ott.vdodtl.vo.VdodtlVO;

public class VdodtlService implements IVdodtlService {
	private static IVdodtlService vdodtlService;
	
	private VdodtlDAO vdodtlDAO;
	
	private VdodtlService() {
		vdodtlDAO = VdodtlDAO.getInstance();
	}
	
	public static IVdodtlService getInstance() {
		if(vdodtlService == null) {
			vdodtlService = new VdodtlService();
		}
		return vdodtlService;
	}

	@Override
	public int registerVdodtl(VdodtlVO vo) {
		int cnt = vdodtlDAO.insert(vo);
		return cnt;
	}

	@Override
	public boolean checkVdodtl(String vdodtlNum) {
		boolean chk = vdodtlDAO.checkVdodtl(vdodtlNum);
		return chk;
	}

	@Override
	public VdodtlVO getVdodtl(String vdodtlNum) {
		VdodtlVO vo = vdodtlDAO.getVdodtl(vdodtlNum);
		return vo;
	}

	@Override
	public int updateVdodtl(VdodtlVO vo) {
		int cnt = vdodtlDAO.update(vo);
		return cnt;
	}

	@Override
	public int removeVdodtl(String vdodtlNum) {
		int cnt = vdodtlDAO.delete(vdodtlNum);
		return cnt;
	}

	@Override
	public List<VdodtlVO> getAllVdodtlList() {
		List<VdodtlVO> vdodtlList = vdodtlDAO.getAllVdodtlList();
		return vdodtlList;
	}

	@Override
	public List<VdodtlVO> searchVdodtlList(VdodtlVO vo) {
		List<VdodtlVO> vdodtlList = vdodtlDAO.searchVdodtlList(vo);
		return vdodtlList;
	}
}

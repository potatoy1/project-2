package kr.or.ddit.ott.oob.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.ott.oob.service.IOobService;
import kr.or.ddit.ott.oob.service.OobService;
import kr.or.ddit.ott.oob.vo.OobVO;
import kr.or.ddit.ott.rep.service.IRepService;
import kr.or.ddit.ott.rep.service.RepService;
import kr.or.ddit.ott.rep.vo.RepVO;

@WebServlet("/oob/detail.do")
public class DetailOobController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String oobNum = req.getParameter("oobNum");	
		
		IOobService oobService = OobService.getInstance();
		OobVO ov = oobService.getOob(oobNum);
		
		req.setAttribute("ov", ov);
			
		//댓글리스트 및 삭제
		IRepService repService = RepService.getInstance();
		RepVO rv = new RepVO();
		rv.setOobNum(oobNum);
		
		req.setAttribute("rv", rv);
		
		List<RepVO> repList = repService.getAllRepList(rv);
		
		req.setAttribute("repList", repList);
		
		
		req.getRequestDispatcher("/view/oob/detail.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
		
		
		String repNum = req.getParameter("repNum");
		String oobNum = req.getParameter("oobNum");
		String repCon = req.getParameter("repCon");
		String repSit = req.getParameter("repSit");
		
		IRepService repService = RepService.getInstance();
		
		RepVO rv = new RepVO();
		rv.setRepNum(repNum);
		rv.setOobNum(oobNum);
		rv.setRepCon(repCon);
		rv.setRepSit(repSit);
		
		int cnt = repService.registerRep(rv);
		
		String msg = "";
		
		if(cnt > 0) {
			//성공
			msg = "성공";
		}else {
			// 실패
			msg = "실패";
		}
		
		HttpSession session = req.getSession();
		session.setAttribute("msg", msg);
		
		String redirectUrl = req.getContextPath() + "/oob/list.do";
		
//		resp.sendRedirect(redirectUrl);
	}

}

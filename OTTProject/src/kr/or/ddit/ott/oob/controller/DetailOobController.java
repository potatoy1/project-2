package kr.or.ddit.ott.oob.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
		String oobNum = req.getParameter("oobNum");
		String repNum = req.getParameter("repNum");
		
		IOobService oobService = OobService.getInstance();
		IRepService repService = RepService.getInstance();
		OobVO ov = oobService.getOob(oobNum);
		RepVO rv = repService.getRep(repNum);
		
		req.setAttribute("ov", ov);
		//댓글리스트 가져오깅
		req.setAttribute("rv", rv);
		
		req.getRequestDispatcher("/view/oob/detail.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

}

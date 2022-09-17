//package kr.or.ddit.ott.rep.controller;
//
//import java.io.IOException;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import kr.or.ddit.ott.rep.service.IRepService;
//import kr.or.ddit.ott.rep.service.RepService;
//import kr.or.ddit.ott.rep.vo.RepVO;
//
//@WebServlet("")
//public class InsertRepController extends HttpServlet{
//	
//	@Override
//	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		super.doGet(req, resp);
//	}
//
//	@Override
//	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		
//		String repNum = req.getParameter("repNum");
//		String oobNum = req.getParameter("oobNum");
//		String repCon = req.getParameter("repCon");
//		String repSit = req.getParameter("repSit");
//		
//		IRepService repService = RepService.getInstance();
//		
//		RepVO rv = new RepVO();
//		rv.setRepNum(repNum);
//		rv.setOobNum(oobNum);
//		rv.setRepCon(repCon);
//		rv.setRepSit(repSit);
//		
//		int cnt = repService.registerReb(rv);
//		
//		String msg = "";
//		
//		if(cnt > 0) {
//			//성공
//			msg = "성공";
//		}else {
//			// 실패
//			msg = "실패";
//		}
//		
//		HttpSession session = req.getSession();
//		session.setAttribute("msg", msg);
//		
//		String redirectUrl = req.getContextPath() + "/oob/list.do";
//		
//		resp.sendRedirect(redirectUrl);
//		
//	}
//}

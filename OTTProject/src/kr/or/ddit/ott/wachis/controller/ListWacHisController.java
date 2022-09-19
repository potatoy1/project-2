package kr.or.ddit.ott.wachis.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.ott.wachis.service.IWacHisService;
import kr.or.ddit.ott.wachis.service.WacHisService;
import kr.or.ddit.ott.wachis.vo.WacHisVO;

@WebServlet("/wish.do")
public class ListWacHisController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 1. 서비스 객체 생성하기
		IWacHisService wachisService = WacHisService.getInstance();

		// 2. 회원목록 조회
		List<WacHisVO> wachisList = wachisService.getAllWacHisList();

		req.setAttribute("wachisList", wachisList);

		RequestDispatcher dispatcher = req.getRequestDispatcher("");

		dispatcher.forward(req, resp); // 뷰 페이지로 전달.

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);

	}
}

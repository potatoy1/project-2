package kr.or.ddit.ott.wislist.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.ott.wislist.service.IWisListService;
import kr.or.ddit.ott.wislist.service.WisListService;
import kr.or.ddit.ott.wislist.vo.WisListVO;

@WebServlet(value = "/wislist/wislist.do")
public class WisListController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 1. 서비스 객체 생성하기
		IWisListService wisListService = WisListService.getInstance();

		// 2. 회원목록 조회
		List<WisListVO> wisList = wisListService.getAllWisList();

		req.setAttribute("wisList", wisList);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/wislist/wislist.jsp");

		dispatcher.forward(req, resp);

	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);

	}
}

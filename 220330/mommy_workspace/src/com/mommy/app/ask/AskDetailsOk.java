package com.mommy.app.ask;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.ask.dao.AskDAO;
import com.mommy.app.ask.dao.AskFilesDAO;

public class AskDetailsOk implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		//사용자가 선택한 게시글 번호를 파라미터로 전달받는다.
		int askNum = Integer.parseInt(req.getParameter("askNum"));
		int page = Integer.parseInt(req.getParameter("page"));
		System.out.println("들어옴1");
		
		AskDAO aDao = new AskDAO();
		AskFilesDAO afDao = new AskFilesDAO();
		ActionForward af = new ActionForward();
		System.out.println("들어옴2");
		
		//게시글 번호로 조회한 게시글의 전체 정보를 requestScope에 저장한다.
		req.setAttribute("ask", aDao.selectDetail(askNum));
		req.setAttribute("files", afDao.select(askNum));
		req.setAttribute("page", page);
		System.out.println("들어옴3");
		
		//requestScope에 데이터를 담았기 때문에 forward로 페이지까지 req객체를 유지한다.
		af.setRedirect(false);
		af.setPath("/app/ask/askDetails.jsp");
		
		return af;
	}

}


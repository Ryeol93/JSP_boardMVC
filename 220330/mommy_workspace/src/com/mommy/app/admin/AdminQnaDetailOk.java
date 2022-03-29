package com.mommy.app.admin;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.admin.dao.AdminDAO;
import com.mommy.app.ask.dao.AskFilesDAO;

public class AdminQnaDetailOk implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		//사용자가 선택한 게시글 번호를 파라미터로 전달받는다.
		int askNum = Integer.parseInt(req.getParameter("askNum"));
		int page = Integer.parseInt(req.getParameter("page"));
		System.out.println("adQD들어옴1");
	
		AdminDAO dao = new AdminDAO();
		AskFilesDAO afDao = new AskFilesDAO();
		ActionForward af = new ActionForward();
		System.out.println("adQD들어옴2");
	
		//게시글 번호로 조회한 게시글의 전체 정보를 requestScope에 저장한다.
		req.setAttribute("admin", dao.selectDetail(askNum));
		req.setAttribute("files", afDao.select(askNum));
		req.setAttribute("page", page);
		req.setAttribute("askNum", askNum);
		System.out.println("adQD들어옴3");
		
		System.out.println(dao.selectDetail(askNum));
		System.out.println(askNum);
		//requestScope에 데이터를 담았기 때문에 forward로 페이지까지 req객체를 유지한다.
		af.setRedirect(false);
		af.setPath("/app/admin/adminQnaDetail.jsp");
		
		return af;
	}

}


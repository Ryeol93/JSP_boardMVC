package com.mommy.app.admin;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.admin.dao.AdminDAO;

public class AdminReportUpdate implements Action{
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {

		int page = Integer.parseInt(req.getParameter("page"));
		int askNum = Integer.parseInt(req.getParameter("askNum"));
		ActionForward af = new ActionForward();
		
		AdminDAO dao = new AdminDAO();
		
		// 회원의 번호로 게시글의 정보 뿐만 아니라 회원의 아이디까지 가져와주는 쿼리 실행
		req.setAttribute("admin", dao.selectDetail(askNum));
		req.setAttribute("page", page);
		
		af.setRedirect(false);
		af.setPath("/app/admin/adminReportDetail.jsp");
		
		return af;
	}
}
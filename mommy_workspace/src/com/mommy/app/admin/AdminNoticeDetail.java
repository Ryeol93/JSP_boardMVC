package com.mommy.app.admin;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.ActionForward;
import com.mommy.app.admin.dao.AdminDAO;
import com.mommy.app.admin.vo.AdminNoticeVO;


public class AdminNoticeDetail {

	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		AdminDAO dao = new AdminDAO();
		AdminNoticeVO vo = new AdminNoticeVO();
		
		int noticeNum = Integer.parseInt(req.getParameter("noticeNum"));
		
		vo = dao.noticeSelectDetail(noticeNum);
		
		req.setAttribute("noticeDetail", vo);
		
		af.setRedirect(false);
		af.setPath("/app/admin/adminNoticeInsert.jsp");
		
		return af;
	}
	
}

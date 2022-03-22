package com.mommy.app.notice;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.notice.dao.NoticeDAO;
import com.mommy.app.notice.vo.NoticeVO;

public class NoticeDetail implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		NoticeDAO dao = new NoticeDAO();
		NoticeVO vo = new NoticeVO();
		
		int noticeNum = Integer.parseInt(req.getParameter("noticeNum"));
		
		vo = dao.selectDetail(noticeNum);
		
		req.setAttribute("noticeDetail", vo);
		
		af.setRedirect(false);
		af.setPath("/app/notice/noticeDetails.jsp");
		
		return af;
	}
	
}

package com.mommy.app.notice;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.notice.dao.NoticeDAO;
import com.mommy.app.notice.vo.NoticeVO;

public class NoticeInsert implements Action{
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		NoticeDAO dao = new NoticeDAO();
		NoticeVO vo = new NoticeVO();
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
				
		vo.setNoticeTitle(req.getParameter("noticeTitle"));
		vo.setNoticeContent(req.getParameter("noticeContent"));
		
		dao.insert(vo);
		
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/notice/NoticeListOk.no");
		
		return af;
		
	}
	
}
		

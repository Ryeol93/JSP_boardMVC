package com.mommy.app.admin;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.admin.dao.AdminDAO;
import com.mommy.app.admin.vo.AdminNoticeVO;
import com.mommy.app.notice.dao.NoticeDAO;
import com.mommy.app.notice.vo.NoticeVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class AdminNoticeInsert implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		AdminDAO dao = new AdminDAO();
		AdminNoticeVO vo = new AdminNoticeVO();
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		
		af.setRedirect(false);
		af.setPath("/app/admin/adminNoticeInsert.jsp");
		
		return af;
		
	}
	
}

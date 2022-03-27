package com.mommy.app.admin;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.admin.dao.AdminDAO;
import com.mommy.app.admin.vo.AdminQnaVO;
import com.mommy.app.admin.vo.AdminVO;
import com.mommy.app.ask.dao.AskFilesDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class AdminQnaDetail implements Action{
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("utf-8");
		
		
		ActionForward af = new ActionForward();
		AdminQnaVO admin = new AdminQnaVO();
		AdminDAO dao = new AdminDAO();
		int askNum = 0, page = 0;
		
		

		admin.setAskNum(askNum);		

		admin.setAskAnswer(req.getParameter("update"));
		
		//게시글 추가
		dao.update(admin);
				
		//파일 추가
				
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/admin/AdminQnaDetail.ad?page=" + page);
		
		return af;
	}
}


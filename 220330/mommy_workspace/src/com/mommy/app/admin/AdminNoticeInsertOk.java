package com.mommy.app.admin;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.ActionForward;
import com.mommy.app.admin.dao.AdminDAO;
import com.mommy.app.admin.dao.AdminFilesDAO;
import com.mommy.app.admin.vo.AdminNoticeVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class AdminNoticeInsertOk {
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("utf-8");
	
		String uploadFolder = req.getSession().getServletContext().getRealPath("/") + "upload";
		int fileSize = 1024 * 1024 * 5;//5M

		ActionForward af = new ActionForward();
		AdminNoticeVO notice = new AdminNoticeVO();
		AdminDAO aDao = new AdminDAO();
		AdminFilesDAO afDao = new AdminFilesDAO();
		
		MultipartRequest multi = new MultipartRequest(req, uploadFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		System.out.println("들어옴1");
		
//		System.out.println(Integer.parseInt(multi.getParameter("category")));
		
		notice.setNoticeTitle(multi.getParameter("noticeTitle"));
		notice.setNoticeContent(multi.getParameter("noticeContent"));
		notice.setNoticeDate(multi.getParameter("noticeDate"));
	//	community.setCommunityCategory(Integer.parseInt(req.getParameter("category")));
		System.out.println("들어옴2");
	
		//게시글 추가
		aDao.insert(notice);
		
		//파일 추가
		afDao.insert(multi, aDao.getSeq());
		
		System.out.println("들어옴3");
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/admin/AdminNoticeListOk.ad");
		
		return af;
	}
}

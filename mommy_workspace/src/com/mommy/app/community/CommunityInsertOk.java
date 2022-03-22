package com.mommy.app.community;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.community.dao.CommunityDAO;
import com.mommy.app.community.dao.FilesDAO;
import com.mommy.app.community.vo.CommunityVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class CommunityInsertOk implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("utf-8");
	
		String uploadFolder = req.getSession().getServletContext().getRealPath("/") + "upload";
		int fileSize = 1024 * 1024 * 5;//5M

		ActionForward af = new ActionForward();
		CommunityVO community = new CommunityVO();
		CommunityDAO cDao = new CommunityDAO();
		FilesDAO fDao = new FilesDAO();
		
		MultipartRequest multi = new MultipartRequest(req, uploadFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		
//		System.out.println(Integer.parseInt(multi.getParameter("category")));
		
		community.setCommunityTitle(multi.getParameter("title"));
		community.setCommunityContent(multi.getParameter("content"));
		community.setUserNum((Integer)req.getSession().getAttribute("userNum"));
		community.setCommunityCategory(Integer.parseInt(multi.getParameter("select")));
	//	community.setCommunityCategory(Integer.parseInt(req.getParameter("category")));
		
	
		//게시글 추가
		cDao.insert(community);
		
		//파일 추가
		fDao.insert(multi, cDao.getSeq());
				
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/community/CommunityListOk.com");
		
		return af;
	}
}

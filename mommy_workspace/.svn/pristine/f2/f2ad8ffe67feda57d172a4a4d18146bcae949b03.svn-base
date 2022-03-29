package com.mommy.app.community;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.community.dao.CommunityDAO;
import com.mommy.app.community.dao.FilesDAO;
import com.mommy.app.service.dao.ProfileFilesDAO;

public class CommunityDetailOk implements Action{
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		//사용자가 선택한 게시글 번호를 파라미터로 전달받는다.
		int communityNum = Integer.parseInt(req.getParameter("communityNum"));
		int page = Integer.parseInt(req.getParameter("page"));
		
		CommunityDAO cDao = new CommunityDAO();
		FilesDAO fDao = new FilesDAO();
		ProfileFilesDAO profileFilesDao = new ProfileFilesDAO();
		ActionForward af = new ActionForward();
		String fileName = profileFilesDao.selectUserImg(cDao.getUserNum(communityNum));
		
		//게시글 번호로 조회한 게시글의 전체 정보를 requestScope에 저장한다.
		req.setAttribute("community", cDao.selectDetail(communityNum));
		req.setAttribute("files", fDao.select(communityNum));
		req.setAttribute("page", page);
		req.setAttribute("communityNum", communityNum);
		req.setAttribute("fileName", fileName);
		//requestScope에 데이터를 담았기 때문에 forward로 페이지까지 req객체를 유지한다.
		af.setRedirect(false);
		af.setPath("/app/community/communityDetails.jsp");
		
		return af;
	}
}

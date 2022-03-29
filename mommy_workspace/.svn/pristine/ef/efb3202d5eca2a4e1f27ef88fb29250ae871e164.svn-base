package com.mommy.app.community;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.community.dao.CommunityDAO;
import com.mommy.app.community.dao.FilesDAO;
import com.mommy.app.community.vo.FilesVO;

public class CommunityUpdate implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {

		int page = Integer.parseInt(req.getParameter("page"));
		int communityNum = Integer.parseInt(req.getParameter("communityNum"));
		ActionForward af = new ActionForward();
		HttpSession sseion = req.getSession();
		FilesDAO filesDao = new FilesDAO();
		
		CommunityDAO dao = new CommunityDAO();
		
		// 회원의 번호로 게시글의 정보 뿐만 아니라 회원의 아이디까지 가져와주는 쿼리 실행
		String fileName = filesDao.selectUserImg(communityNum);
		System.out.println(fileName);
		req.setAttribute("community", dao.selectDetail(communityNum));
		req.setAttribute("page", page);
		req.setAttribute("fileName", fileName);
		
		af.setRedirect(false);
		af.setPath("/app/community/communityUpdate.jsp");
		
		return af;
	}
}

package com.mommy.app.community;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.community.dao.CommunityDAO;

public class CommunityUpdate implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {

		int page = Integer.parseInt(req.getParameter("page"));
		int communityNum = Integer.parseInt(req.getParameter("communityNum"));
		ActionForward af = new ActionForward();
		
		CommunityDAO dao = new CommunityDAO();
		
		// 회원의 번호로 게시글의 정보 뿐만 아니라 회원의 아이디까지 가져와주는 쿼리 실행
		req.setAttribute("community", dao.selectDetail(communityNum));
		req.setAttribute("page", page);
		
		af.setRedirect(false);
		af.setPath("/app/community/communityUpdate.jsp");
		
		return af;
	}
}

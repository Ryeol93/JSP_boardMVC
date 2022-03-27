package com.mommy.app.community;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.community.dao.CommunityCommentDAO;
import com.mommy.app.community.vo.CommunityCommentVO;

public class CommunityCommentUpdateOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		CommunityCommentVO comment = new CommunityCommentVO();
		CommunityCommentDAO dao = new CommunityCommentDAO();
		
		comment.setCommentContent(req.getParameter("commentContent"));
		comment.setCommentNum(Integer.parseInt(req.getParameter("commentNum")));
		
		dao.updateComment(comment);
		return null;
	}
}

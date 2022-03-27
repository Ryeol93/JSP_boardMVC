package com.mommy.app.community;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.community.dao.CommunityCommentDAO;

public class CommunityCommentDeleteOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		CommunityCommentDAO dao = new CommunityCommentDAO();
		
		dao.deleteComment(Integer.parseInt(req.getParameter("commentNum")));
		return null;
	}
}

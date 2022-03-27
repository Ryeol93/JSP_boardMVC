package com.mommy.app.community;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.community.dao.CommunityCommentDAO;
import com.mommy.app.community.vo.CommunityCommentDTO;

public class CommunityCommentListOk implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		int communityNum = Integer.parseInt(req.getParameter("communityNum"));
		CommunityCommentDAO dao = new CommunityCommentDAO();
		PrintWriter out = resp.getWriter();
	
		List<CommunityCommentDTO> commentList = dao.selectComments(communityNum);
		
		JSONArray comments = new JSONArray();

		for(CommunityCommentDTO c : commentList) {
			JSONObject comment = new JSONObject();
			comment.put("commentNum", c.getCommentNum());
			comment.put("communityNum", c.getCommunityNum());
			comment.put("userNum", c.getUserNum());
			comment.put("userId", c.getUserId());
			comment.put("commentContent", c.getCommentContent());
			comment.put("commentDate", c.getCommentDate());
			comments.add(comment);
		}

		out.print(comments.toJSONString());
		out.close();
		
		return null;
	
	}
}

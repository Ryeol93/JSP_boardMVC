package com.mommy.app.community;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.user.dao.UserDAO;



public class CommunityInsert implements Action{
		@Override
		public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
			
			HttpSession session = req.getSession();
			UserDAO dao = new UserDAO();
			ActionForward af = new ActionForward();
			
			String userId = dao.getInfo((Integer)session.getAttribute("userNum")).getUserId();
			
			req.setAttribute("userId", userId);
			
			af.setRedirect(false);
			af.setPath("/app/community/communityInsert.jsp");
			
			return af;
		}
	
}

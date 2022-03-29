package com.mommy.app.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;

public class UserFindId implements Action {
	

	public String hiddenId(String userId) {
		
		return userId.substring(0, userId.length()-4) + "****";
		
	}
	
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		
		HttpSession  session = req.getSession();
		String userId = (String) session.getAttribute("userId");
		String userId2 = (String) session.getAttribute("userId");
	
//
			userId2= hiddenId(userId);
//		
		
		
			req.setAttribute("userId",  userId );
		
		req.setAttribute("userId2",  userId2 );
		
		session.invalidate();
		af.setRedirect(false);
		af.setPath("/app/user/certified.jsp");
			
		
		
		
		return af;
	}

	
	
	
	
	
	
}

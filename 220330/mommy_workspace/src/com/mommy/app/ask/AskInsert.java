package com.mommy.app.ask;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mommy.action.ActionForward;
import com.mommy.app.ask.dao.AskDAO;
import com.mommy.app.user.dao.UserDAO;

public class AskInsert {
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		HttpSession session = req.getSession();
		UserDAO uDao = new UserDAO();
		ActionForward af = new ActionForward();
		
		String userId = uDao.getInfo((Integer)session.getAttribute("userNum")).getUserId();
		String userName = uDao.getInfo((Integer)session.getAttribute("userNum")).getUserName();

		req.setAttribute("userId", userId);
		req.setAttribute("userName", userName);
		
		af.setRedirect(false);
		af.setPath("/app/ask/askInsert.jsp");
		
		return af;
	}
}

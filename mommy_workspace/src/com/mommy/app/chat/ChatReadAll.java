package com.mommy.app.chat;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.chat.dao.ChatDAO;

public class ChatReadAll implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		ActionForward af = new ActionForward();
		ChatDAO dao = new ChatDAO();
		HttpSession session = req.getSession();
		
		int userNum = (Integer)session.getAttribute("userNum");
		dao.updateAll(userNum);
		
		return null;
	}
}

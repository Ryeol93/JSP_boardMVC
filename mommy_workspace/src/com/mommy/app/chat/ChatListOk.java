package com.mommy.app.chat;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.chat.dao.ChatDAO;

public class ChatListOk implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		ActionForward af = new ActionForward();
		ChatDAO dao = new ChatDAO();
		HttpSession session = req.getSession();
		
		int userNum = (Integer)session.getAttribute("userNum");
		int count = dao.getTotal(userNum);

		System.out.println(dao.selectAll(userNum).size());
		req.setAttribute("chatList", dao.selectAll(userNum));
		req.setAttribute("totalCount", count);
		req.setAttribute("userNum", userNum);
		
		System.out.println(dao.selectAll(userNum));
		System.out.println(dao.getTotal(userNum));
		af.setRedirect(false);
		af.setPath("/app/chat/chatLog.jsp");
		
		return af;
	}
}

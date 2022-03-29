package com.mommy.app.chat;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.chat.dao.ChatDAO;
import com.mommy.app.chat.vo.ChatVO;

public class ChatInsertOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		System.out.println("깐뜨롤러");
		//(userNum, sendUserName, chatTitle, chatContent, chatDate, chatStatus)
		// userNum2 : 글 쓴이: 프로필 (요청 받는 사람) 
		ChatVO chat = new ChatVO();
		ChatDAO dao = new ChatDAO();
		HttpSession session = req.getSession();
		
		int userNum = (Integer)session.getAttribute("userNum"); // 요청 보내는 사람
		System.out.println(userNum);
		String userName = dao.userName(userNum); // 요청 보내는 사람 이름
		System.out.println(userName);
		System.out.println("///////////////////////");
		
		
		System.out.println(req.getParameter("chatContent"));
		System.out.println(req.getParameter("chatTitle"));
		chat.setChatContent(req.getParameter("chatContent"));
		chat.setChatTitle(userName + " ( " + req.getParameter("chatTitle") + " ) "); // 
		System.out.println(chat.getChatTitle());
		
		chat.setSendUserName(userNum); // 요청 보내는 사람 
		chat.setUserNum(Integer.parseInt(req.getParameter("userNum2")));	// 요청 받는 사람 
		
		
		dao.insert(chat);
		
		return null;
	}
}

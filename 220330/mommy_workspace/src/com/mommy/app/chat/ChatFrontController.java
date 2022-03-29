package com.mommy.app.chat;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.ActionForward;
import com.mommy.app.ask.AskList;

public class ChatFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionForward af = null;
	
		System.out.println("채팅 프론트컨트롤러 들어옴");
		if(command.equals("/chat/ChatListOk.chat")) {
			af = new ChatListOk().execute(req, resp);
		}else if (command.equals("/chat/ChatReadOne.chat")) {
			new ChatReadOne().execute(req, resp);
		}else if (command.equals("/chat/ChatReadAll.chat")) {
			new ChatReadAll().execute(req, resp);
		}else if(command.equals("/chat/ChatInsertOk.chat")) {
			new ChatInsertOk().execute(req, resp);
		}
		
		if(af != null) {// af가 null이 아니라면
			if(af.isRedirect()) {//redirect 방식이라면
				resp.sendRedirect(af.getPath());//redirect로 전송
				
			}else {//forward 방식이라면
				RequestDispatcher dispatcher = req.getRequestDispatcher(af.getPath());
				dispatcher.forward(req, resp);//forward로 전송
			}
		}
	
	}
}

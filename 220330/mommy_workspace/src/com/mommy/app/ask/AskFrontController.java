package com.mommy.app.ask;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.ActionForward;
import com.mommy.app.community.CommunityInsert;

public class AskFrontController extends HttpServlet{
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
		
		if(command.equals("/ask/AskDetailsOk.ask")) {
			af = new AskDetailsOk().execute(req, resp);
			System.out.println("프론트컨트롤러 들어옴1");
			
		}else if(command.equals("/ask/AskListOk.ask")) {
			af = new AskListOk().execute(req, resp);
			System.out.println("프론트컨트롤러 들어옴2");
			
		}else if(command.equals("/ask/AskList.ask")) {
			af = new AskList().execute(req, resp);
			System.out.println("프론트컨트롤러 들어옴3");
			
		}else if(command.equals("/ask/AskInsertOk.ask")) {
			af = new AskInsertOk().execute(req, resp);
			System.out.println("프론트컨트롤러 들어옴4");
			
		}else if(command.equals("/ask/AskInsert.ask")) {
			af = new AskInsert().execute(req, resp);
			System.out.println("프론트컨트롤러 들어옴5");
			
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

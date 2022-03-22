package com.mommy.app.community;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.ActionForward;

public class CommunityFrontController extends HttpServlet {
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
	
		
		if(command.equals("/communtiy/CommunityInsertOk.com")) { 
			af = new CommunityInsertOk().execute(req, resp); //String email, MultipartFile file
		}else if(command.equals("/community/CommunityListOk.com")) {
			af = new CommunityListOk().execute(req, resp);
		}else if(command.equals("/communtiy/CommunityInsert.com")) {
			af = new CommunityInsert().execute(req, resp);
		}else if (command.equals("/community/CommunityDetailOk.com")) {
			af = new CommunityDetailOk().execute(req, resp);
		}
		
		
		  else if (command.equals("/community/CommunityDeleteOk.com")) {
			af = new CommunityDeleteOk().execute(req, resp);
		} else if (command.equals("/community/CommunityUpdate.com")) {
			af = new CommunityUpdate().execute(req, resp);
		} else if (command.equals("/community/CommunityUpdateOk.com")) {
			af = new CommunityUpdateOk().execute(req, resp);
		} else if (command.equals("/community/FileDownloadOk.com")) {
			af = new FileDownloadOk().execute(req, resp);
		} else if (command.equals("/community/CommunityCommentListOk.com")) {
			new CommunityCommentListOk().execute(req, resp);
		} else if (command.equals("/community/CommunityCommentUpdateOk.com")) {
			new CommunityCommentUpdateOk().execute(req, resp);
		} else if (command.equals("/community/CommunityCommentWriteOk.com")) {
			new CommunityCommentWriteOk().execute(req, resp);
		} else if (command.equals("/community/CommunityCommentDeleteOk.com")) {
			new CommunityCommentDeleteOk().execute(req, resp);
		}
		 
		//전송안할지
				if(af != null) {
					if(af.isRedirect()) {
						//redirect
						resp.sendRedirect(af.getPath());
					}else {
						//forward
						//request객체에서 Dispatch을 가져온 뒤, 이동할 경로를 전달한다.
						//dispatch : 요청과 응답을 관리해주는 객체
						RequestDispatcher dispatcher = req.getRequestDispatcher(af.getPath());
						//dispatcher객체에서 forward()를 사용할 때 request와 response객체 둘 다 전달해주면
						//응답할 화면까지 데이터가 유지된다.
						dispatcher.forward(req, resp);
					}
				}
		
	}
	
}

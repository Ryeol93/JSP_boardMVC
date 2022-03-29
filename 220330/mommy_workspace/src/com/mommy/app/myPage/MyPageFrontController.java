package com.mommy.app.myPage;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.mommy.action.ActionForward;
import com.mommy.app.myPage.MyPageChangePw;
import com.mommy.app.myPage.MyPageHeart;
import com.mommy.app.myPage.MyPageInfo;
import com.mommy.app.myPage.MyPagePwCk;
import com.mommy.app.myPage.MyPagePwCkOk;
import com.mommy.app.myPage.Mypage;
import com.mommy.app.myPage.MypageUpdateMyInfoOk;



public class MyPageFrontController extends HttpServlet{
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
		
		
		 if(command.equals("/myPage/Mypage.my")) {
			af = new Mypage().execute(req, resp);
		}else if(command.equals("/myPage/MyPageInfo.my")) {
			af = new MyPageInfo().execute(req, resp);
		}else if(command.equals("/myPage/MyPageChangePw.my")) {
			af = new MyPageChangePw().execute(req, resp);
		}else if(command.equals("/myPage/MyPagePwCk.my")) {
			af = new MyPagePwCk().execute(req, resp);
		}else if(command.equals("/myPage/MyPageHeart.my")) {
			af = new MyPageHeart().execute(req, resp);
		}else if(command.equals("/myPage/MyPagePwCkOk.my")) {
			af = new MyPagePwCkOk().execute(req, resp);
		}else if(command.equals("/myPage/MypageUpdateMyInfoOk.my")) {
			af = new MypageUpdateMyInfoOk().execute(req, resp);
		}else if(command.equals("/myPage/MyPageUpdatePwOk.my")) {
			af = new MyPageUpdatePwOk().execute(req, resp);
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
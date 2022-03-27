package com.mommy.app.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.coyote.Adapter;

import com.mommy.action.ActionForward;
import com.mommy.app.myPage.MyPageChangePw;
import com.mommy.app.myPage.MyPageHeart;
import com.mommy.app.myPage.MyPageInfo;
import com.mommy.app.myPage.MyPagePwCk;
import com.mommy.app.myPage.MyPagePwCkOk;
import com.mommy.app.myPage.Mypage;
import com.mommy.app.myPage.MypageUpdateMyInfoOk;
import com.mommy.app.user.dao.UserDAO;




public class UserFrontController extends HttpServlet{
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
		
		
		if(command.equals("/user/UserCheckIdOk.user")) {
			new UserCheckIdOk().execute(req, resp);
			
		}else if(command.equals("/user/UserJoin.user")) {
			af = new ActionForward();
			af.setRedirect(false);
			af.setPath("/app/user/join.jsp");
		
		}else if(command.equals("/user/UserCheckEmOk.user")) {
			af = new UserCheckEmOk().execute(req, resp);
			
		}else if(command.equals("/user/UserCheckSamePhoneOk.user")) {
			af = new UserCheckSamePhoneOk().execute(req, resp);	
			
		}else if(command.equals("/user/UserFindIdPwOk.user")) {
			
			af = new UserFindIdPwOk().execute(req, resp);	
			
		}else if(command.equals("/user/UserJoinOk.user")) {
			af = new UserJoinOk().execute(req, resp);
			
		}else if(command.equals("/user/UserPhoneOk.user")) {
			af = new UserPhoneOk().execute(req, resp);
			
		}else if(command.equals("/user/UserLogin.user")) {
			af = new ActionForward();
			af.setRedirect(false);
			af.setPath("/app/user/login.jsp");	
			
		}else if(command.equals("/user/UserLoginOk.user")) {
			af = new UserLoginOk().execute(req, resp);	
			
		}else if(command.equals("/user/UserMainOk.user")) {
			af = new ActionForward();
			af.setRedirect(false);
			af.setPath("/app/etc/main.jsp");
		}else if(command.equals("/user/UserLogout.user")) {
	         af = new UserLogout().execute(req, resp);
	         
		}else if(command.equals("/user/UserFindID.user")) {
			af = new UserFindId().execute(req, resp);
			
		}else if(command.equals("/user/UserDeleteOk.user")) {
			af = new UserDeleteOk().execute(req, resp);	
		}else if(command.equals("/user/ChangePw.user")) {
			af = new ActionForward();
			af.setRedirect(false);
			af.setPath("/app/user/changePw.jsp");
		}else if(command.equals("/user/ChangePwOk.user")) {
			af = new UserChangePwOk().execute(req, resp);
			
		}else if(command.equals("/user/UserLoginFailOk.user")) {
			af = new UserLoginOk().execute(req, resp);	
			af.setRedirect(false);
			af.setPath("/app/user/loginFail.jsp");
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

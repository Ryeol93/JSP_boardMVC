package com.mommy.app.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.ActionForward;
import com.mommy.app.user.UserCheckEmOk;
import com.mommy.app.admin.AdminMemberListOk;
import com.mommy.app.user.UserJoinOk;
import com.mommy.app.user.UserLoginOk;
//import com.mommy.app.user.UserLogout;
import com.mommy.app.user.UserPhoneOk;

public class AdminFrontController extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionForward af = null;
		
		
		if(command.equals("/admin/AdminMainOk.ad")) {
			af = new AdminMainOk().execute(req, resp);
			
		}else if (command.equals("/admin/AdminMemberListOk.ad")) {
			af = new AdminMemberListOk().execute(req, resp);
			
		}else if (command.equals("/admin/AdminQnaListOk.ad")) {
			af = new AdminQnaListOk().execute(req, resp);
			System.out.println("adQListOk FC");
			
		}else if(command.equals("/admin/AdminQnaDetailOk.ad")) {
			af = new AdminQnaDetailOk().execute(req, resp);
			System.out.println("adQDetailOk FC");
			
		}else if(command.equals("/admin/AdminQnaDetail.ad")) {
			af = new AdminQnaDetail().execute(req, resp);
			System.out.println("adQDetail FC");
			
		}else if(command.equals("/admin/AdminQnaUpdate.ad")) {
			af = new AdminQnaUpdate().execute(req, resp);
			System.out.println("adQUp FC");
			
		}else if(command.equals("/admin/AdminQnaUpdateOk.ad")) {
			af = new AdminQnaUpdateOk().execute(req, resp);
			System.out.println("adQUpOk FC");
			
		}else if (command.equals("/admin/AdminReportListOk.ad")) {
			af = new AdminReportListOk().execute(req, resp);
			System.out.println("adRListOk FC");
			
		}else if(command.equals("/admin/AdminReportDetailOk.ad")) {
			af = new AdminReportDetailOk().execute(req, resp);
			System.out.println("adReportOk FC");
			
		}else if(command.equals("/admin/AdminReportDetail.ad")) {
			af = new AdminReportDetail().execute(req, resp);
			System.out.println("adRDetail FC");
			
		}else if(command.equals("/admin/AdminReportUpdate.ad")) {
			af = new AdminReportUpdate().execute(req, resp);
			System.out.println("adRUp FC");
			
		}else if(command.equals("/admin/AdminReportUpdateOk.ad")) {
			af = new AdminReportUpdateOk().execute(req, resp);
			System.out.println("adRUpOk FC");
			
		}else if(command.equals("/admin/AdminNoticeInsert.ad")) {
			af = new AdminNoticeInsert().execute(req, resp);
			System.out.println("adNoInsert FC");
			
		}else if(command.equals("/admin/AdminNoticeListOk.ad")) {
			af = new AdminNoticeListOk().execute(req, resp);
			System.out.println("adNoListOk FC");
			
		}else if(command.equals("/admin/AdminNoticeDetail.ad")) {
			af = new AdminNoticeDetail().execute(req, resp);
			System.out.println("adNoDetail FC");
			
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

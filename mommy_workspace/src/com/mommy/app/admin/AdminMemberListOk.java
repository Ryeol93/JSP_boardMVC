package com.mommy.app.admin;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.user.dao.UserDAO;

public class AdminMemberListOk implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		UserDAO dao = new UserDAO();
		ActionForward af = new ActionForward();
		
		//회원 전체 정보 조회
		req.setAttribute("members", dao.selectAll());
		
		//회원 전체 수
		req.setAttribute("members", dao.selectCount());
		
		//맘 회원 수
		req.setAttribute("members", dao.MomCount());
		
		//시터 회원 수
		req.setAttribute("members", dao.SitterCount());
		
		af.setRedirect(false);
		af.setPath("/app/admin/adminMList.jsp");
		return af;
	}
      
}
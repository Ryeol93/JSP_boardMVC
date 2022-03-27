package com.mommy.app.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.user.dao.UserDAO;

public class UserDeleteOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		UserDAO userDao = new UserDAO();
		HttpSession session = req.getSession();
		ActionForward af = new ActionForward();
		
		int userNum = (int) session.getAttribute("userNum");
		userDao.deleteUser(userNum);
		// 로그아웃도 해야함
		session.invalidate();
		
		af.setRedirect(true);
		
		af.setPath(req.getContextPath()+"/app/etc/main.jsp");
		
		return af;
	}

}

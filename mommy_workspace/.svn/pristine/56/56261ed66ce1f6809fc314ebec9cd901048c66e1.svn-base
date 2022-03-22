package com.mommy.app.service;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.user.dao.UserDAO;
import com.mommy.app.user.vo.UserVO;

public class LookSitterProfile2 implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		UserDAO userDao = new UserDAO();
		UserVO userVo = new UserVO();		
		
		HttpSession session = req.getSession();
		int userNum = (Integer)session.getAttribute("userNum");
		
		userVo = userDao.getInfo(userNum);
		int birthYear = userVo.getUserBirthYear();
		int nowYear = Calendar.getInstance().get(Calendar.YEAR);
		int age = nowYear -  birthYear;
		req.setAttribute("userAge", age);
			
		req.setAttribute("user", userVo);
		
		 
		 af.setRedirect(false);
		 af.setPath("/app/serviceProfile/lookSitterProfile2.jsp");
		
		
		
		
		return null;
	}

}

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

public class WriteSitter implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HttpSession session = req.getSession();
		
		
		int userNum = (Integer)session.getAttribute("userNum");
		UserVO userVO = new UserVO();
		UserDAO userDao = new UserDAO();
		ActionForward af = new ActionForward();
		

		
		
		/*String userId = dao.getInfo((Integer)session.getAttribute("userNum")).getUserId();*/
		userVO = userDao.getInfo(userNum);
		
		int birthYear = userVO.getUserBirthYear();
		int nowYear = Calendar.getInstance().get(Calendar.YEAR);
		int age = nowYear -  birthYear;
		req.setAttribute("userAge", age);
		req.setAttribute("userVO", userVO);
		
		af.setRedirect(false);
		af.setPath("/app/serviceWrite/WriteSitter.jsp");
		return af;
	}

}

package com.mommy.app.myPage;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.user.dao.UserDAO;
import com.mommy.app.user.vo.UserVO;

public class Mypage implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		HttpSession sseion = req.getSession();
		UserDAO userDao = new UserDAO();
		UserVO userVo = new UserVO();
		
		
		int userNum = (int) sseion.getAttribute("userNum");
		//System.out.println(userNum);
		
		userVo =  userDao.getInfo(userNum);
		

		
		int birthYear = userVo.getUserBirthYear();
		int nowYear = Calendar.getInstance().get(Calendar.YEAR);
		int age = nowYear -  birthYear;
		req.setAttribute("user", userVo);
		req.setAttribute("userAge", age);
		System.out.println(userVo.getUserGender());
		af.setRedirect(false);
		af.setPath("/app/myPage/myPage.jsp");
		
		return af;
	}

}

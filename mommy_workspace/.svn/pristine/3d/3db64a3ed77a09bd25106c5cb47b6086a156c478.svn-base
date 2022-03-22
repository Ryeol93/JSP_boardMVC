package com.mommy.app.myPage;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.myPage.dao.MyPageDAO;
import com.mommy.app.user.dao.UserDAO;
import com.mommy.app.user.vo.UserVO;

public class MypageUpdateMyInfoOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
//		UserDAO userDao = new UserDAO();
		UserVO userVo = new UserVO();
		MyPageDAO mpDao = new MyPageDAO();
		HttpSession session = req.getSession();
		
		
		int userNum =	(int) session.getAttribute("userNum");
		String newPhonNumInput = (String) req.getParameter("newPhonNumInput");
		int birthYear = Integer.parseInt(req.getParameter("birthYear"));
		int birthMonth = Integer.parseInt(req.getParameter("birthMonth"));
		int birthDate = Integer.parseInt( req.getParameter("birthDate"));
		System.out.println("MypageUpdateMyInfoOk");
		System.out.println(birthYear);
		System.out.println(birthMonth);
		System.out.println(birthDate);
		System.out.println(newPhonNumInput);
		System.out.println(userNum);
		userVo.setUserBirthYear(birthYear);
		userVo.setUserBirthMonth(birthMonth);
		userVo.setUserBirthDate(birthDate);
		userVo.setUserPhone(newPhonNumInput);
		userVo.setUserNum((int) session.getAttribute("userNum"));
		
	
		
		
		
		
		
		mpDao.updateMyInfo(userVo);
		
		return null;
	}

}

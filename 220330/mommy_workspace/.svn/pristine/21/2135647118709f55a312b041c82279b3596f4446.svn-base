package com.mommy.app.myPage;

import java.io.IOException;
import java.time.LocalDate;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.chat.dao.ChatDAO;
import com.mommy.app.service.dao.ProfileFilesDAO;
import com.mommy.app.user.dao.UserDAO;
import com.mommy.app.user.vo.UserVO;

public class Mypage implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		HttpSession sseion = req.getSession();
		UserDAO userDao = new UserDAO();
		UserVO userVo = new UserVO();
		ProfileFilesDAO profileFilesDao = new ProfileFilesDAO();
		ChatDAO chatDao = new ChatDAO();

		
	
		int userNum = (int) sseion.getAttribute("userNum");
		//System.out.println(userNum);
		int checkChat = chatDao.countNew(userNum);
		System.out.println(checkChat + "dd");
		int userStatus  = userDao.selectStatus(userNum); // 현재 사용자의 상태값
		int statusParent = 1; // 부모의 상태값
		int statusSitter = 2; // 부모의 상태값
		
		userVo =  userDao.getInfo(userNum);
		String fileName = profileFilesDao.selectUserImg(userNum);
		
		if( userStatus == statusParent) { // 부모 프로필 
			if(userDao.myPageProfileCk(userNum)) { // 있음
				req.setAttribute("profileStatus", 1);
			}else { // 프로필 없음
				req.setAttribute("profileStatus", 0);
			}
		
		}else if (userStatus == statusSitter){ // 시터 프로필 
			if(userDao.myPageProfileCk(userNum)) { // 있음
				if(userDao.profileProcess(userNum) == 1) { // 있음
					req.setAttribute("profileStatus", 1);
				}else {
					req.setAttribute("profileStatus", 2); // 대기중
					System.out.println("대기중임");
				}
			}else {
				req.setAttribute("profileStatus", 0);
			}
		}
		
		//나이(만나이)
		int birthYear = userVo.getUserBirthYear();
		int birthMonth = userVo.getUserBirthMonth();
		int birthDay = userVo.getUserBirthDate();
		
        Calendar current = Calendar.getInstance();
      int currentYear  = current.get(Calendar.YEAR);
        int currentMonth = current.get(Calendar.MONTH) + 1;
        int currentDay   = current.get(Calendar.DAY_OF_MONTH);
      
        int age =  currentYear - birthYear;
//        
//        // 생일 안 지난 경우 -1
//        if (birthMonth * 100 + birthDay > currentMonth * 100 + currentDay) 
//            age--;
      
		
//		int nowYear = Calendar.getInstance().get(Calendar.YEAR);
//		int age = nowYear -  birthYear;
		req.setAttribute("user", userVo);
		req.setAttribute("userAge", age);
		req.setAttribute("fileName", fileName);
		req.setAttribute("checkChat", checkChat);
		System.out.println(userVo.getUserGender());
		af.setRedirect(false);
		af.setPath("/app/myPage/myPage.jsp");
		
		return af;
	}

}

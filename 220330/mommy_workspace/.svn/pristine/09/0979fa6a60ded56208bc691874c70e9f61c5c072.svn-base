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
		//나이(만나이)
				int birthYear = userVo.getUserBirthYear();
				int birthMonth = userVo.getUserBirthMonth();
				int birthDay = userVo.getUserBirthDate();
				
		        Calendar current = Calendar.getInstance();
		        int currentYear  = current.get(Calendar.YEAR);
		        int currentMonth = current.get(Calendar.MONTH) + 1;
		        int currentDay   = current.get(Calendar.DAY_OF_MONTH);
		      
		        int age = currentYear - birthYear;
		        
		        // 생일 안 지난 경우 -1
		        if (birthMonth * 100 + birthDay > currentMonth * 100 + currentDay) 
		            age--;
		        
		req.setAttribute("userAge", age);
			
		req.setAttribute("user", userVo);
		
		 
		 af.setRedirect(false);
		 af.setPath("/app/serviceProfile/lookSitterProfile2.jsp");
		
		
		
		
		return null;
	}

}

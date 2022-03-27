package com.mommy.app.service;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.service.dao.ServiceDAO;
import com.mommy.app.service.vo.LookProfileDTO;
import com.mommy.app.user.dao.UserDAO;
import com.mommy.app.user.vo.UserVO;

public class LookMomProfileOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		ServiceDAO dao = new ServiceDAO();
		LookProfileDTO dto = new LookProfileDTO();
		UserVO userVO = new UserVO();
		UserDAO userDao = new UserDAO();
		int profileUserNum = Integer.parseInt(req.getParameter("userNum")); 
		
		HttpSession session= req.getSession();
		
		String uploadFolder = "\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\mommy_workspace\\upload\r\n" + 
				"String realPath =req.getSession().getServletContext().getRealPath(\"/\") + \"upload\"";
		System.out.println("프로파일유저넘버"+req.getParameter("profileUserNum"));
		int userNum = (Integer)session.getAttribute("userNum");
		System.out.println("유저번호 가져옴");
		/*String userId = dao.getInfo((Integer)session.getAttribute("userNum")).getUserId();*/
		userVO = userDao.getInfo(profileUserNum);
		System.out.println("getinfo()실행");
		
		//나이(만나이)
				int birthYear = userVO.getUserBirthYear();
				int birthMonth = userVO.getUserBirthMonth();
				int birthDay = userVO.getUserBirthDate();
				
		        Calendar current = Calendar.getInstance();
		        int currentYear  = current.get(Calendar.YEAR);
		        int currentMonth = current.get(Calendar.MONTH) + 1;
		        int currentDay   = current.get(Calendar.DAY_OF_MONTH);
		      
		        int age = currentYear - birthYear;
		        
		        // 생일 안 지난 경우 -1
		        if (birthMonth * 100 + birthDay > currentMonth * 100 + currentDay) 
		            age--;
		        
		
		dto=dao.lookMomProfile(profileUserNum);
		
		req.setAttribute("momInfo", dto);
		System.out.println(session.getAttribute("userNum"));
		req.setAttribute("userNum2", session.getAttribute("userNum"));
		req.setAttribute("user", userVO);
		req.setAttribute("userAge", age);
		req.setAttribute("profile", req.getParameter("profile"));
		
		af.setRedirect(false);
		af.setPath("/app/serviceProfile/lookMomProfile2.jsp");
		return af;
	}
	
}
		

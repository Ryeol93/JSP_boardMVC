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
		
		HttpSession session= req.getSession();
		
		String uploadFolder = "\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\mommy_workspace\\upload\r\n" + 
				"String realPath =req.getSession().getServletContext().getRealPath(\"/\") + \"upload\"";
		
		int userNum = (Integer)session.getAttribute("userNum");
		System.out.println("유저번호 가져옴");
		/*String userId = dao.getInfo((Integer)session.getAttribute("userNum")).getUserId();*/
		userVO = userDao.getInfo(userNum);
		System.out.println("getinfo()실행");
		int birthYear = userVO.getUserBirthYear();
		int nowYear = Calendar.getInstance().get(Calendar.YEAR);
		int age = nowYear -  birthYear;
		
		dto=dao.lookMomProfile(userNum);
		
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
		

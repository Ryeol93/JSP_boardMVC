package com.mommy.app.myPage;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.user.dao.UserDAO;
import com.mommy.app.user.vo.UserVO;

public class MyPageInfo implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		UserDAO userDao = new UserDAO();
		UserVO userVo = new UserVO();
		HttpSession session = req.getSession();
		int userNum = (int) session.getAttribute("userNum");
		
		userVo = userDao.getInfo(userNum);
		System.out.println(session.getAttribute("userNum"));
		System.out.println(userVo.getUserName());
		req.setAttribute("userVo", userVo);
		System.out.println(userVo.getUserName());
		
		af.setRedirect(false);
		af.setPath("/app/myPage/myPageInfo.jsp");
		
		return af;
		
	}

}

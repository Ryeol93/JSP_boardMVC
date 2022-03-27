package com.mommy.app.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.user.dao.UserDAO;
import com.mommy.app.user.vo.UserVO;

public class UserJoinOk implements Action{
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
	req.setCharacterEncoding("UTF-8");
		
		ActionForward af = new ActionForward();
		UserVO user = new UserVO();
		UserDAO dao = new UserDAO();
		
		user.setUserBirthDate(Integer.parseInt(req.getParameter("userBirthDate")));
		user.setUserBirthMonth(Integer.parseInt(req.getParameter("userBirthMonth")));
		user.setUserBirthYear(Integer.parseInt(req.getParameter("userBirthYear")));
		user.setUserId(req.getParameter("userId"));
		user.setUserName(req.getParameter("userName"));
		user.setUserPhone(req.getParameter("userPhone"));
		user.setUserPw(req.getParameter("userPw"));
		user.setUserEmail(req.getParameter("userEmail"));
		user.setUserStatus(Integer.parseInt(req.getParameter("userStatus")));
		user.setUserGender(Integer.parseInt(req.getParameter("userGender")));
		
			dao.join(user);
		
		af.setRedirect(true);
		//redirect로 전송할 때 contextPath가 사라지기 때문에
		//미리 붙여놓고 전송한다.
		af.setPath(req.getContextPath() + "/user/UserLogin.user");
		
		return af;
	}
}

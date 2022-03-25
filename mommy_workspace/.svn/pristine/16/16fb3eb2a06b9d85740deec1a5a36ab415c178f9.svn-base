package com.mommy.app.service;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.service.dao.FavoriteDAO;
import com.mommy.app.service.dao.ServiceDAO;
import com.mommy.app.service.vo.FavoriteVO;
import com.mommy.app.service.vo.LookProfileDTO;

public class LookSitterProfileOk implements Action  {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		ServiceDAO dao = new ServiceDAO();
		FavoriteDAO fdao = new FavoriteDAO();
		FavoriteVO favorite = new FavoriteVO();
		int check = 0;
		
		LookProfileDTO dto = new LookProfileDTO();
		HttpSession session= req.getSession();
		int userNum = (int) session.getAttribute("userNum");
		
		dto=dao.lookSitterProfile(userNum);
		System.out.println("들어옴1");
	// 여기 추가
		
		//(Integer)session.getAttribute("userNum"))
		//Integer.parseInt(req.getParameter("userNum"))
		
		favorite.setUserNum(userNum);
		System.out.println(favorite.getUserNum() + ": 이거 글 쓴 유저넘이다");
		
		favorite.setProfileUserNum(userNum);
		System.out.println(favorite.getProfileUserNum() + ": 로그인한 사람 유저넘");
		
		check = fdao.check(favorite);
		System.out.println(check + ": my check");
		req.setAttribute("sitterInfo", dto);
		req.setAttribute("userNum2", session.getAttribute("userNum"));
		req.setAttribute("check", check);
		req.setAttribute("profile", req.getParameter("profile"));
		
		System.out.println(req.getParameter("profile"));
		af.setRedirect(false);
		af.setPath("/app/serviceProfile/lookSitterProfile2.jsp");
		return af;
	}

}

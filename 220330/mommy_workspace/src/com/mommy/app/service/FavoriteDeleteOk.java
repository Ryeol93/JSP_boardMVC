package com.mommy.app.service;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.service.dao.FavoriteDAO;
import com.mommy.app.service.vo.FavoriteVO;

public class FavoriteDeleteOk implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
	
		System.out.println("찜 삭제~");
		
		FavoriteVO favorite = new FavoriteVO();
		FavoriteDAO dao = new FavoriteDAO();
		int userNum = Integer.parseInt(req.getParameter("userNum"));
		int profileUserNum = Integer.parseInt(req.getParameter("profileUserNum"));
		
		int fromList = 0;
		if(req.getParameter("fromList") !=null) {
		 fromList = Integer.parseInt(req.getParameter("fromList"));
		}
		
		System.out.println(userNum);
		System.out.println(profileUserNum);
		System.out.println(fromList);
		favorite.setUserNum(userNum);
		favorite.setProfileUserNum(profileUserNum);
		dao.delete(favorite);
		

		if(fromList == 1) {
			System.out.println("삭제 리스트 있음 확인");
			ActionForward af = new ActionForward();
			af.setPath("/service/FavoriteListOk.ser");
			af.setRedirect(false);
			return af;
		}
		
		return null;
	
	}
}

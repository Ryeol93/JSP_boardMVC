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
	
		favorite.setUserNum(Integer.parseInt(req.getParameter("userNum")));
		favorite.setProfileUserNum(Integer.parseInt(req.getParameter("profileNum")));
		
		dao.delete(favorite);
		
		return null;
	
	}
}

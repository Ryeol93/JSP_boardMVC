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
		
		FavoriteVO favorite = new FavoriteVO();
		FavoriteDAO dao = new FavoriteDAO();
	
		favorite.setUserNum((Integer)req.getSession().getAttribute("userNum"));
		favorite.setProfileNum((Integer)req.getSession().getAttribute("profileNum"));
		dao.delete(favorite);
		
		return null;
	
	}
}

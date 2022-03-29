package com.mommy.app.service;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.service.dao.FavoriteDAO;
import com.mommy.app.service.dao.ProfileFilesDAO;
import com.mommy.app.service.dao.ServiceDAO;
import com.mommy.app.user.dao.UserDAO;

public class SitterProfileDeleteOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		//들어오는지 확인용
		System.out.println("딜리트컨트롤");
		ServiceDAO serdao  = new ServiceDAO();
		ProfileFilesDAO prodao = new ProfileFilesDAO();
		FavoriteDAO favoriteDAO = new FavoriteDAO();
		
		ActionForward af = new ActionForward();
		UserDAO userDao = new UserDAO();
		
		//유저번호와 프로파일번호를 받아옴
		int userNum = Integer.parseInt(req.getParameter("userNum2"));
/*		int profile = Integer.parseInt(req.getParameter("profile")); */
		
		
		int userStatus = userDao.selectStatus(userNum); // 현재 사용자의 상태값
		int statusParent = 1;//부모 상태값
		int statusSitter = 2; //시터의 상태값
		 
		int profileNum = serdao.selectProfileNum(userNum);
		
		
		// 넘겨줄 상태값
		int resultStatus = 0;

		
		
		//상태번호가 부모라면
		if(userStatus == statusParent) {
			prodao.delete(profileNum);
			favoriteDAO.deleteUserAll(userNum);
			serdao.delete(userNum);
//			System.out.println("삭제완료1");
			af.setPath("/service/SearchJobOk.ser");
		//상태번호가 시터라면
		}else if(userStatus == statusSitter){
			prodao.delete(profileNum);
			favoriteDAO.deleteUserAll(userNum);
			serdao.delete(userNum);
			System.out.println("삭제완료2");
			af.setPath("/service/SearchMomOk.ser");
		}
		
		
//		af.setPath(req.getContextPath() + "/service/SearchMomOk.ser");
		af.setRedirect(false);
		return af;
	}
	
}

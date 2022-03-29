package com.mommy.app.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.ask.dao.AskDAO;
import com.mommy.app.ask.dao.AskFilesDAO;
import com.mommy.app.chat.dao.ChatDAO;
import com.mommy.app.community.dao.CommunityCommentDAO;
import com.mommy.app.community.dao.CommunityDAO;
import com.mommy.app.community.dao.FilesDAO;
import com.mommy.app.service.dao.FavoriteDAO;
import com.mommy.app.service.dao.ProfileFilesDAO;
import com.mommy.app.service.dao.ServiceDAO;
import com.mommy.app.user.dao.UserDAO;
import com.mommy.app.user.vo.DeleteUserDTO;

public class UserDeleteOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		UserDAO userDao = new UserDAO();
		HttpSession session = req.getSession();
		ActionForward af = new ActionForward();
		DeleteUserDTO dUserDto = new DeleteUserDTO();
		ServiceDAO serviceDao = new ServiceDAO();
		ProfileFilesDAO profileFilesDao = new ProfileFilesDAO();
		AskFilesDAO askFilesDao = new AskFilesDAO();
		CommunityDAO communityDao = new CommunityDAO();
		FavoriteDAO favoriteDAO = new FavoriteDAO();
//		ChatDAO chatDao = new ChatDAO();
//		AskDAO askDao = new AskDAO();

		int userNum = (int) session.getAttribute("userNum");
/*		dUserDto = userDao.getNumforDelete(userNum);
		int profileNum = Integer.parseInt(dUserDto.getProfileNum());*/
		System.out.println(userNum);
		int profileNum = serviceDao.selectProfileNum(userNum);
/*		int askNum = Integer.parseInt(dUserDto.getAskNum());
		int communityNum = Integer.parseInt(dUserDto.getCommunityNum());*/
		
		

		// tbl_askfiles 
		// 고객문의로 관리자 페이지에서 사용할수도 있기 떄문에 남겨둔다.
//		askFilesDao.delete(askNum);
		//tbl_communityfiles
	
		
		

/*		askDao.delete(userNum);
		//	채팅 삭제 delete from tbl_chat where userNum = 유저넘;
		chatDao.delete(userNum);*/
		
		System.out.println("삭제시 유저번호: "+userNum);
		System.out.println("삭제시 프로파일번호: "+profileNum);
		//프로파일 첨부파일 삭제 
		profileFilesDao.delete(profileNum);
		// 	찜목록 전체 삭제 
		favoriteDAO.deleteUserAll(userNum);
		
		// 다른 사람의 찜목록에서 자신이 포함된 경우 삭제 
		serviceDao.inFavoriteDelete(userNum);
		// 프로파일  삭제
		serviceDao.delete(userNum); 
/*		// 유저 삭제(제일 마지막)
		userDao.deleteUser(userNum);*/
		// 회원탈퇴 (유저 스테이터스 변경)
		userDao.cancelUser(userNum);
		
		
		// 로그아웃도 해야함
		session.invalidate();
		
		af.setRedirect(true);
		
		af.setPath(req.getContextPath()+"/app/etc/main.jsp");
		
		return af;
	}

}

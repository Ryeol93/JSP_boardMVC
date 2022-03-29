package com.mommy.app.service;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.service.dao.FavoriteDAO;
import com.mommy.app.service.dao.ProfileFilesDAO;
import com.mommy.app.service.vo.FavoriteDTO;
import com.mommy.app.user.dao.UserDAO;
import com.mommy.app.user.vo.UserVO;

public class FavoriteListOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		FavoriteDAO favoriteDAO = new FavoriteDAO();
		HttpSession session = req.getSession();
		ActionForward af = new ActionForward();
		UserDAO userDao = new UserDAO();
		ProfileFilesDAO profileFilesDao = new ProfileFilesDAO();
		
		System.out.println("찜목록 컨트롤러 들어옴");
		int userNum = (int) session.getAttribute("userNum");
		System.out.println(userNum);
		List<FavoriteDTO> datas = favoriteDAO.selectAll(userNum);
		datas.forEach(data -> System.out.println(data.getProfileNum()));
		datas.forEach(data -> System.out.println(data.getUserNum()));
		// 프로필넘버로 사용자의 나이를 가져온다 
		for (int i = 0; i < datas.size(); i++) {
			UserVO userVo = new UserVO();
			userVo = userDao.getInfo(datas.get(i).getProfileUserNum());
			int userBirthYear  = userVo.getUserBirthYear();
			int nowYear = Calendar.getInstance().get(Calendar.YEAR);
			int age = nowYear -  userBirthYear;
			datas.get(i).setAge(userBirthYear);
			datas.get(i).setUserName(userVo.getUserName());
			datas.get(i).setUserGender(userVo.getUserGender());
			datas.get(i).setFileName(profileFilesDao.selectFileName(datas.get(i).getProfileNum()));
			//System.out.println("유저번호 !!!"+datas.get(i).getUserNum());
			
			DecimalFormat decFormat = new DecimalFormat("###,###");
			String temp =  datas.get(i).getProfileSalary();
			 temp = decFormat.format(Integer.parseInt(temp));
		
			datas.get(i).setProfileSalary(temp);  
			System.out.println(age);
			System.out.println(userVo.getUserName());
			System.out.println(profileFilesDao.selectFileName(datas.get(i).getProfileNum()));
			
			
			
		}
		

		
		req.setAttribute("profileList", datas);
		
		af.setRedirect(false);
		af.setPath("/app/myPage/myPageHeart.jsp");
		
		
		
		return af;
	}

}

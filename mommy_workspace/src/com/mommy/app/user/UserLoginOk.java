package com.mommy.app.user;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.user.dao.UserDAO;
import com.mommy.app.user.vo.UserVO;

public class UserLoginOk  implements Action{
   
   @Override
   public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
      
      HashMap<String, String> loginMap = new HashMap<>();
      UserDAO userDao = new UserDAO();
      UserVO user = new UserVO();
      ActionForward af = new ActionForward();
      HttpSession session = req.getSession();
      
      int userNum = 0;
      int selectStatus = -1;
      String selectName = "";
      
      loginMap.put("userId", req.getParameter("userId"));
      loginMap.put("userPw", req.getParameter("userPw"));
      
      userNum = userDao.login(loginMap);
      selectStatus = userDao.selectStatus(userNum);
      selectName = userDao.selectName(userNum);
      

      
      
        
      
      // --------------------------------------쿠키 ---------------------------
      
   
      user = userDao.getInfo(userNum);
      
      if(req.getParameter("saveId") != null){ //아이디 저장이 체크되었다면
      	//쿠키에 로그인된 사용자의 아이디 저장
      	Cookie cookieId = new Cookie("memberId", user.getUserId());
      	//아이디 저장 체크 저장
      	Cookie cookieCheckbox = new Cookie("saveId", "true");
      	
      	//1년의 기간동안 쿠키 유지
      	cookieId.setMaxAge(60*60*24*365);
      	cookieCheckbox.setMaxAge(60*60*24*365);
      	
      	//응답 데이터 저장
      	resp.addCookie(cookieId);
      	resp.addCookie(cookieCheckbox);
      	
      }else{ // 아이디 저장이 체크되지 않았다면
      	String cookieCheck = req.getHeader("Cookie");
      	if(cookieCheck != null){
      		Cookie[] cookies = req.getCookies();
      		for(Cookie cookie : cookies){
      			// 기존에 있던 쿠키 전부 삭제
      			cookie.setMaxAge(0);
      			resp.addCookie(cookie);
      		}
      	}
      }
      
      if(req.getParameter("autoLogin") != null){ //자동 로그인이 체크되었다면
      	
      	//로그인 된 사용자의 아이디 쿠키에 저장
      	Cookie cookieId = new Cookie("memberId", user.getUserId());
      	//로그인 된 사용자의 암호화된 비밀번호 쿠키에 저장(여기서 복호화 하면 해킹 바로 당함).
      	Cookie cookiePw = new Cookie("memberPw", req.getParameter("userPw"));
      	//자동 로그인 체크 저장
      	Cookie cookieCheckbox = new Cookie("autoLogin", "true");
      	
      	//1년의 기간동안 쿠키 유지
      	cookieId.setMaxAge(60*60*24*365);
      	cookiePw.setMaxAge(60*60*24*365);
      	cookieCheckbox.setMaxAge(60*60*24*365);
      	
      	//응답 데이터 저장
      	resp.addCookie(cookieId);
      	resp.addCookie(cookiePw);
      	resp.addCookie(cookieCheckbox);
      	
      }else{ // 자동 로그인이 체크되지 않았다면
      	String cookieCheck = req.getHeader("Cookie");
      	if(cookieCheck != null){
      		Cookie[] cookies = req.getCookies();
      		for(Cookie cookie : cookies){
      			// 쿠키 전체 삭제
      			cookie.setMaxAge(0);
      			resp.addCookie(cookie);
      		}
      	}
      }


      
      
      
      //로그인 실패
      if(userNum == 0 || selectStatus == -1) {
    	 System.out.println("로그인실패");
         af.setRedirect(false);
         af.setPath("/user/UserLoginFailOk.user");
      
      }else {
    	 
         //관리자 로그인
         if(selectStatus == 0) {
            session.setAttribute("userNum", userNum);
            session.setAttribute("userStatus", selectStatus);
            session.setAttribute("userName", selectName);
            af.setRedirect(true);
            af.setPath(req.getContextPath() + "/admin/admin.ad");
         //회원 로그인 
         }   else if(selectStatus>0){
            session.setAttribute("userNum", userNum);
            session.setAttribute("userStatus", selectStatus);
            session.setAttribute("userName", selectName);
            af.setRedirect(true);
            af.setPath(req.getContextPath() + "/user/UserMainOk.user");
      
         } 
   }
      
		
      
      

//      System.out.println(selectName);
      	return af;

   }
   
}
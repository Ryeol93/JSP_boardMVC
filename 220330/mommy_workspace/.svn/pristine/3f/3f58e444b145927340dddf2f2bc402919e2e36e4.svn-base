package com.mommy.app.myPage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.myPage.dao.MyPageDAO;
import com.mommy.app.user.dao.UserDAO;
import com.mommy.app.user.vo.UserVO;

public class MyPagePwCkOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
	      MyPageDAO mpDao = new MyPageDAO();
	      UserDAO uDao = new UserDAO();
	      
	      
	      HttpSession session = req.getSession();
	      String userNum =   session.getAttribute("userNum")+"";
	      String userPw = req.getParameter("userPw");
	      PrintWriter out = resp.getWriter();
	      System.out.println("입력 비밀번호 : "+userPw);
	      System.out.println("세션 번호 : "+userNum);
	      

	      
	     
	      
	      
	      HashMap<String, String> pwUpdateMap = new HashMap<>();
	      pwUpdateMap.put("userNum", userNum);
	      pwUpdateMap.put("userPw", req.getParameter("userPw"));
	      
	      int result = mpDao.myPagePwCk(pwUpdateMap);;
		
	      
	      
	    
	      JSONObject json = new JSONObject();
		
	
	     
	     if(result == 1) {
//	    	 userVo = uDao.getInfo(userNum);
//	    	 req.setAttribute("userVO", userVo);
	    	 json.put("userNum", userNum);
	     }else {
	    	 json.put("userNum", "null");
	     }
	     
	

		out.print(json.toJSONString());
		out.close();
		
		return null;
	}

}

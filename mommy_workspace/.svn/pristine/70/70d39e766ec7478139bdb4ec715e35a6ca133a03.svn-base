package com.mommy.app.myPage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.myPage.dao.MyPageDAO;
import com.mommy.app.user.vo.UserVO;

public class MyPageUpdatePwOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		MyPageDAO mpDao = new MyPageDAO();
		
		HttpSession session = req.getSession();
		int userNum =  (int) session.getAttribute("userNum");
		PrintWriter out = resp.getWriter();
		
	      HashMap<String, String> pwUpdateMap = new HashMap<>();
	      pwUpdateMap.put("userNum", session.getAttribute("userNum")+"");
	      pwUpdateMap.put("userPw", req.getParameter("beforePw"));
	      pwUpdateMap.put("newPw", req.getParameter("newPw"));
	      
	      int result = mpDao.myPagePwCk(pwUpdateMap);
		
	      JSONObject json = new JSONObject();
	      
	      System.out.println("유저번호"+pwUpdateMap.get("userNum"));
	      System.out.println("기존 비밀번호"+pwUpdateMap.get("userPw"));
	      System.out.println("새 비밀번호"+pwUpdateMap.get("newPw"));
	      
		// 비밀번호 일치
		if(result == 1) {
			System.out.println("MyPageUpdatePwOk 비밀번호 일치");
			System.out.println("유저번호"+pwUpdateMap.get("userNum"));
			System.out.println("비밀번호"+pwUpdateMap.get("userPw"));
			mpDao.updatePw(pwUpdateMap);
			json.put("userNum", userNum);
		}else {
		// 비밀번호 불일치
			System.out.println("MyPageUpdatePwOk 비밀번호 불일치");
			json.put("userNum", "null");
		}
		
		out.print(json.toJSONString());
		out.close();
		
		
		return null;
	}
	
}

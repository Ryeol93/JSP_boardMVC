package com.mommy.app.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;


import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.user.dao.UserDAO;

public class UserCheckEmOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {

		String EmailCh = req.getParameter("UserEm");
		UserDAO dao = new UserDAO();
		PrintWriter out = resp.getWriter();
		JSONObject obj = new JSONObject();
	
		if(dao.CheckEmail(EmailCh)) {
				
			//아이디가 중복되었을 때
//			out.print("not-ok");
			obj.put("status", "not-ok");
		}else {
		
			//사용 가능한 아이디일 때
//			out.print("ok");
		
			obj.put("status", "ok");
		}
		
		out.print(obj.toJSONString());
		out.close();
		
		return null;
	}
}
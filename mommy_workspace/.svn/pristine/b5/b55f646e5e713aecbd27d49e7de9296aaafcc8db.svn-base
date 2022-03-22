package com.mommy.app.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.user.dao.UserDAO;
import com.mommy.app.user.vo.UserVO;
import net.nurigo.java_sdk.api.Message;


import net.nurigo.java_sdk.exceptions.CoolsmsException;


public class UserPhoneOk implements Action{
	
			
			
			@Override
			public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
			req.setCharacterEncoding("UTF-8");
				
				UserVO user = new UserVO();
				UserDAO dao = new UserDAO();
				PrintWriter out = resp.getWriter();
				JSONObject obj = new JSONObject();
				
				String userPhone = req.getParameter("userPhone");
			
						//휴대폰 번호 인증
				   String api_key = "NCSTLDI4YOFAFBDH"; // 내 API key
				       String api_secret = "N1FVJOXIPM0XU7KHPPHDEH9DPMMLFADS"; // 내 API secret key 		
/*					String api_key = "NCSTFZGSGACJE9SI"; // 자신의API 키 
					String api_secret = "WW3ZOL6NAB2G0XATZRY0OFNXJDZBRAMF"; // API SECRET KEY 
				*/
						int code =(int)(Math.random()*(999999 - 100000) + 100000);
				       
				       
				       Message coolsms = new Message(api_key, api_secret);

				       // 4 params(to, from, type, text) are mandatory. must be filled
				       HashMap<String, String> params = new HashMap<String, String>();
				       params.put("to", userPhone);
//				       params.put("from", "01042872040");
				       params.put("from", "01045665789");
				   /*    System.out.println(userPhone);*/
				       params.put("type", "SMS");
				       params.put("text", "귀하의 인증번호는 ["+ code +"] 입니다.");
				       params.put("app_version", "test app 2.2"); // application name and version

				       try {
				         JSONObject obj2 = (JSONObject) coolsms.send(params);
				         System.out.println(obj2.toString());
				       } catch (CoolsmsException e) {
				         System.out.println(e.getMessage());
				         System.out.println(e.getCode());
				       }
/*				System.out.println("dd");
				System.out.println(userPhone);*/
				
				obj.put("verifyCode", code);
		
				out.print(obj.toJSONString());
				out.close();
				
				return null;
			}
			
}

package com.mommy.app.chat;

import java.io.IOException;
import java.util.HashMap;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.chat.dao.ChatDAO;

public class ChatReadOne implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		HashMap<String, Integer> map = new HashMap<>();
		ActionForward af = new ActionForward();
		ChatDAO dao = new ChatDAO();
		HttpSession session = req.getSession();
		JSONArray comments = new JSONArray();
		PrintWriter out = resp.getWriter();
		
		int userNum = (Integer)session.getAttribute("userNum");
		int chatNum = Integer.parseInt(req.getParameter("chatNum"));

		map.put("userNum", userNum);
		map.put("chatNum", chatNum);
	
		dao.updateOne(map);
		
		JSONObject count = new JSONObject();
		count.put("count", dao.countNew(userNum));
		System.out.println(count);
		out.print(count.toJSONString());
		out.close();
		
		return null;
	}
}

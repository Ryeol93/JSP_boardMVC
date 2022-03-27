package com.mommy.app.admin;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mommy.action.ActionForward;
import com.mommy.app.admin.dao.AdminDAO;
import com.mommy.app.user.dao.UserDAO;

public class AdminNoticeListOk {

	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		AdminDAO dao = new AdminDAO();
		UserDAO uDao = new UserDAO();
		HttpSession session = req.getSession();
		
		HashMap<String, Integer> noticeMap = new HashMap();
		
		int total = dao.noticeGetTotal();
		String temp = req.getParameter("page");
		//사용자가 선택한 페이지가 없으면 1페이지로가고 선택한 페이지가 있으면 해당 페이지로 이동
		int page = temp == null ? 1: Integer.parseInt(temp);
		int rowCount = 5;
		int pageSize = 5;
		
		int startRow = (page - 1)*rowCount;
		
		int startPage = ((page - 1) / pageSize)* pageSize + 1;
		
		int endPage = startPage + pageSize - 1;
		
		int realEndPage = (int)Math.ceil(total / (double)rowCount);
		
		endPage = endPage < realEndPage ? realEndPage : endPage;
		
		noticeMap.put("startRow", startRow);
		noticeMap.put("rowCount", rowCount);
		
		String userId = uDao.getInfo((Integer)session.getAttribute("userNum")).getUserId();
		String userName = uDao.getInfo((Integer)session.getAttribute("userNum")).getUserName();
		int userStatus = uDao.getInfo((Integer)session.getAttribute("userStatus")).getUserStatus();
		
		req.setAttribute("userId", userId);
		req.setAttribute("userName", userName);
		req.setAttribute("userStatus", userStatus);
		
		req.setAttribute("noticeList", dao.noticeSelectAll(noticeMap));
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("realEndPage", realEndPage);
		req.setAttribute("total", total);
		
		af.setRedirect(false);
		af.setPath("/app/admin/adminNotice.jsp");
		
		return af;
	}
		
}

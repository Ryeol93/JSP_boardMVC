package com.mommy.app.notice;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.notice.dao.NoticeDAO;

public class NoticeListOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		NoticeDAO dao = new NoticeDAO();
		
		HashMap<String, Integer> noticeMap = new HashMap();
		
		int total = dao.getTotal();
		String temp = req.getParameter("page");
		//사용자가 선택한 페이지가 없으면 1페이지로가고 선택한 페이지가 있으면 해당 페이지로 이동
		int page = temp == null ? 1: Integer.parseInt(temp);
		int rowCount = 10;
		int pageSize = 5;
		
		int startRow = (page - 1)*rowCount;
		
		int startPage = ((page - 1) / pageSize)* pageSize + 1;
		
		int endPage = startPage + pageSize - 1;
		
		int realEndPage = (int)Math.ceil(total / (double)rowCount);
		
		endPage = endPage < realEndPage ? realEndPage : endPage;
		
		noticeMap.put("startRow", startRow);
		noticeMap.put("rowCount", rowCount);
		
		req.setAttribute("noticeList", dao.selectAll(noticeMap));
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("realEndPage", realEndPage);
		req.setAttribute("total", total);
		
		af.setRedirect(false);
		af.setPath("/app/notice/notice.jsp");
		
		return af;
	}
		
}

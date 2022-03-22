package com.mommy.app.admin;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.admin.dao.AdminDAO;
import com.mommy.app.user.dao.UserDAO;

public class AdminMainOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		ActionForward af = new ActionForward();
		AdminDAO dao = new AdminDAO();
		UserDAO uDao = new UserDAO();
		
		HashMap<String, Integer> qnaMap = new HashMap<>();
		HashMap<String, Integer> reportMap = new HashMap<>();
		HashMap<String, Integer> authMap = new HashMap();
		HashMap<String, Integer> noticeMap = new HashMap();
		
		int total0 = dao.getQnaTotal();
		int total1 = dao.getReportTotal();
		int total2 = dao.authGetTotal();
		int total3 = dao.noticeGetTotal();
		
		String temp = req.getParameter("page");

		int page = temp == null ? 1 : Integer.parseInt(temp);
		
		int rowCount = 6;
		int pageSize = 5;
		int startRow = (page - 1)*rowCount;	
		int startPage = ((page - 1) / pageSize)* pageSize + 1;	
		int endPage = startPage + pageSize - 1;	
		
		int realEndPage0 = (int)Math.ceil(total0 / (double)rowCount);	
		endPage = endPage < realEndPage0 ? realEndPage0 : endPage;
		
		int realEndPage1 = (int)Math.ceil(total1 / (double)rowCount);	
		endPage = endPage < realEndPage1 ? realEndPage1 : endPage;
		
		int realEndPage2 = (int)Math.ceil(total2 / (double)rowCount);	
		endPage = endPage < realEndPage2 ? realEndPage2 : endPage;
		
		int realEndPage3 = (int)Math.ceil(total3 / (double)rowCount);	
		endPage = endPage < realEndPage3 ? realEndPage3 : endPage;
		
		reportMap.put("startRow", startRow);
		reportMap.put("rowCount", rowCount);
		
		qnaMap.put("startRow", startRow);
		qnaMap.put("rowCount", rowCount);
		
		authMap.put("startRow", startRow);
		authMap.put("rowCount", rowCount);
		
		noticeMap.put("startRow", startRow);
		noticeMap.put("rowCount", rowCount);
		
		req.setAttribute("qnaList", dao.qnaSelectAll(qnaMap));
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("realEndPage0", realEndPage0);
		req.setAttribute("total0", total0);
		
		req.setAttribute("reportList", dao.reportSelectAll(reportMap));
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("realEndPage0", realEndPage0);
		req.setAttribute("total1", total1);
		
		req.setAttribute("authList", dao.authSelectAll(authMap));
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("realEndPage0", realEndPage0);
		req.setAttribute("total2", total2);
		
		req.setAttribute("noticeList", dao.noticeSelectAll(noticeMap));
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("realEndPage0", realEndPage0);
		req.setAttribute("total3", total3);
		
		af.setRedirect(false);
		af.setPath("/app/admin/admin.jsp");
		
		return af;
	}
}

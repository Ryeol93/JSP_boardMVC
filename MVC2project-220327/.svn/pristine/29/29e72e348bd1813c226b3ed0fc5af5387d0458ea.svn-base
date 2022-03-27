package com.mommy.app.service;

import java.io.IOException;  
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.service.dao.ServiceDAO;

public class SearchMomOk  implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HashMap<String, Integer> searchDetailMap = new HashMap<>();
		ActionForward af = new ActionForward();
		ServiceDAO dao = new ServiceDAO();
		int userStatus=2;
		

		//사용자가 요청한 페이지
		String temp = req.getParameter("page");
		//사용자가 요청한 페이지가 null이면 1페이지를,
		//null이 아니면 요청한 페이지를 page에 담아준다.
		int page = temp == null ? 1 : Integer.parseInt(temp);
		//한 페이지에 출력되는 게시글의 개수
		int rowCount = 5;

		
		//페이지에서 출력되는 게시글 중 첫번째 게시글의 인덱스
		int startRow = (page - 1) * rowCount;
		
		System.out.println("page : "  + page);
		System.out.println("startRow : " + startRow);
		
		searchDetailMap.put("startRow", startRow);
		searchDetailMap.put("rowCount", rowCount);
		searchDetailMap.put("profileProcess", 1);
		searchDetailMap.put("userStatus", userStatus);

			req.setAttribute("momList", dao.searchDetail(searchDetailMap)); 
		 
				req.setAttribute("page", page);

				
				af.setRedirect(false);
				af.setPath("/app/serviceSearch/searchMom.jsp");
				return af;
	} 

}

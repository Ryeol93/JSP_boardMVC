package com.mommy.app.ask;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.ask.dao.AskDAO;
import com.mommy.app.ask.vo.AskDTO;
import com.mommy.app.user.dao.UserDAO;

public class AskList implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		HttpSession session = req.getSession();
		UserDAO uDao = new UserDAO();
		ActionForward af = new ActionForward();
		HashMap<String, Integer> askMap = new HashMap<>();
		AskDAO dao = new AskDAO();
		AskDTO aDto = new AskDTO();
		
//		BoardDAO bDao = new BoardDAO();
//		MemberDAO mDao = new MemberDAO();

		int userNum = (Integer)session.getAttribute("userNum");
		//전체 게시글 개수
		int total = dao.getTotal(userNum);
//		int total = bDao.getTotal();
		//사용자가 요청한 페이지
		//사용자가 요청한 페이지

//		int total = bDao.getTotal();
		//사용자가 요청한 페이지
		String temp = req.getParameter("page");
		//사용자가 요청한 페이지가 null이면 1페이지를,
		//null이 아니면 요청한 페이지를 page에 담아준다.
		int page = temp == null ? 1 : Integer.parseInt(temp);
		//한 페이지에 출력되는 게시글의 개수
		int rowCount = 10;
		//한 화면에 나오는 페이지 번호 수
		int pageSize = 5;
		
		//페이지에서 출력되는 게시글 중 첫번째 게시글의 인덱스
		int startRow = (page - 1) * rowCount;
		
		//화면에 출력되는 페이지 번호 중
		//시작 페이지(1, 11, 21, ....)
		int startPage = ((page - 1) / pageSize) * pageSize + 1;
		//끝 페이지(10, 20, 30, ...)
		int endPage = startPage + pageSize - 1;
		//실제 마지막 게시글이 출력되는 마지막 페이지 번호
		int realEndPage = (int)Math.ceil(total / (double)rowCount);
		
		//만약 화면에서의 마지막 페이지가 실제 마지막 페이지보다 크다면,
		//실제 마지막 페이지를 endPage에 담아준다.
		//endPage는 항상 10단위로 끝나기 때문에, 14페이지가 마지막 페이지일 경우
		//14페이지를 endPage에 담아준다. 
		endPage = endPage > realEndPage ? realEndPage : endPage;
				
		askMap.put("startRow", startRow);
		askMap.put("rowCount", rowCount);
		askMap.put("userNum", userNum);
		
		req.setAttribute("askList", dao.selectAll(askMap));
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("realEndPage", realEndPage);
		req.setAttribute("total", total);
		
		String userId = uDao.getInfo((Integer)session.getAttribute("userNum")).getUserId();
		String userName = uDao.getInfo((Integer)session.getAttribute("userNum")).getUserName();

		
		req.setAttribute("userId", userId);
		req.setAttribute("userName", userName);
		
		System.out.println(total);
		System.out.println(userNum);
		af.setRedirect(false);
		af.setPath("/app/ask/ask.jsp");
		
		return af;
	}
}

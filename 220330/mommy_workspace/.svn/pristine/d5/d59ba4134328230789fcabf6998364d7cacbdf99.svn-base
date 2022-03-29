package com.mommy.app.admin;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.user.dao.UserDAO;

public class AdminMemberListOk implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		UserDAO dao = new UserDAO();
		ActionForward af = new ActionForward();
		
		HashMap<String, Integer> userMap = new HashMap();

		int total = dao.selectCount();
		String temp = req.getParameter("page");
		//사용자가 선택한 페이지가 없으면 1페이지로가고 선택한 페이지가 있으면 해당 페이지로 이동
		int page = temp == null ? 1: Integer.parseInt(temp);
		int rowCount = 14;
		int pageSize = 10;
		
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
		
		userMap.put("startRow", startRow);
		userMap.put("rowCount", rowCount);
		
		//회원 전체 정보 조회
		req.setAttribute("userList", dao.selectAll(userMap));
		
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("realEndPage", realEndPage);
		
		//회원 전체 수
		req.setAttribute("membersTotal", dao.selectCount());
		
		//맘 회원 수
		req.setAttribute("membersMom", dao.MomCount());
		
		//시터 회원 수
		req.setAttribute("membersSitter", dao.SitterCount());
		
		
		af.setRedirect(false);
		af.setPath("/app/admin/adminMList.jsp");
		return af;
	}
      
}
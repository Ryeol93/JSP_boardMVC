package com.mommy.app.admin;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mommy.action.ActionForward;
import com.mommy.app.admin.dao.AdminDAO;
import com.mommy.app.admin.vo.AdminAuthDTO;
import com.mommy.app.service.dao.ProfileFilesDAO;
import com.mommy.app.user.dao.UserDAO;

public class AdminAuthListOk {
	
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		AdminDAO dao = new AdminDAO();
		UserDAO uDao = new UserDAO();
		HttpSession session = req.getSession();
		ProfileFilesDAO pfDao= new ProfileFilesDAO();
		AdminAuthDTO aDto =new AdminAuthDTO();

		HashMap<String, Integer> fileMap = new HashMap();
		HashMap<String, Integer> authMap = new HashMap();
		
		int total = dao.authGetTotal();
		int total0 = dao.authGetTotal0();
		int total1 = dao.authGetTotal1();
		//사용자가 요청한 페이지
		String temp = req.getParameter("page");
		//사용자가 요청한 페이지가 null이면 1페이지를,
		//null이 아니면 요청한 페이지를 page에 담아준다.
		int page = temp == null ? 1 : Integer.parseInt(temp);
		//한 페이지에 출력되는 게시글의 개수
		int rowCount = 10;
		//한 화면에 나오는 페이지 번호 수
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
		
		//DB에서 필요한 데이터를 Map에 담는다.
		authMap.put("startRow", startRow);
		authMap.put("rowCount", rowCount);
		
//		String userId = uDao.getInfo((Integer)session.getAttribute("userNum")).getUserId();
//		String userName = uDao.getInfo((Integer)session.getAttribute("userNum")).getUserName();
//		int userStatus = uDao.getInfo((Integer)session.getAttribute("userStatus")).getUserStatus();
//		
//		req.setAttribute("userId", userId);
//		req.setAttribute("userName", userName);
//		req.setAttribute("userStatus", userStatus);

		
		req.setAttribute("authList", dao.authSelectAll(authMap));
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("realEndPage", realEndPage);
		req.setAttribute("total", total);
		req.setAttribute("total0", total0);
		req.setAttribute("total1", total1);
		
		
		af.setRedirect(false);
		af.setPath("/app/admin/adminAuth.jsp");
		
		return af;
	}
		
}
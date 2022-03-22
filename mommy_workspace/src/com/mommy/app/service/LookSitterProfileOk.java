package com.mommy.app.service;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.service.dao.ServiceDAO;
import com.mommy.app.service.vo.LookProfileDTO;

public class LookSitterProfileOk implements Action  {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		ServiceDAO dao = new ServiceDAO();
		LookProfileDTO dto = new LookProfileDTO();
		HttpSession session= req.getSession();

		dto=dao.lookSitterProfile(Integer.parseInt(req.getParameter("userNum")));
		
		
		req.setAttribute("sitterInfo", dto);
		System.out.println(session.getAttribute("userNum"));
		req.setAttribute("userNum2", session.getAttribute("userNum"));
		
		af.setRedirect(false);
		af.setPath("/app/serviceProfile/lookSitterProfile2.jsp");
		return af;
	}

}

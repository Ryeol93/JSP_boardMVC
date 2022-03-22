package com.mommy.app.service;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.service.dao.ServiceDAO;

public class SitterProfileDeleteOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		int userNum = Integer.parseInt(req.getParameter("userNum"));
		ServiceDAO serdao  = new ServiceDAO();
		ActionForward af = new ActionForward();
		
		
		System.out.println("확인:" + req.getParameter("userNum"));
		serdao.delete(userNum);
		
		
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/service/SearchMomOk.ser");
		return af;
	}
	
}

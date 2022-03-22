package com.mommy.app.service;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.community.dao.FilesDAO;
import com.mommy.app.service.dao.ProfileFilesDAO;
import com.mommy.app.service.dao.ServiceDAO;

public class SitterProfileDeleteOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		int userNum = Integer.parseInt(req.getParameter("userNum"));
		ServiceDAO serdao  = new ServiceDAO();
		ActionForward af = new ActionForward();
//		ProfileFilesDAO fDao = new ProfileFilesDAO();
		
//		   String path = "D:\\aigb_0900_jcr\\jsp\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\mommy_workspace\\upload\\star.png"; // 삭제할 파일의 경로

		//userNum받아서 삭제
		System.out.println("확인:" + req.getParameter("userNum"));
		serdao.delete(userNum);
		
		
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/service/SearchMomOk.ser");
		return af;
	}
	
}

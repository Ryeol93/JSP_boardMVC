package com.mommy.app.community;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.community.dao.CommunityDAO;
import com.mommy.app.community.dao.FilesDAO;
import com.mommy.app.community.vo.FilesVO;

public class CommunityDeleteOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		int communityNum = Integer.parseInt(req.getParameter("communityNum"));
		String uploadFolder = req.getSession().getServletContext().getRealPath("/") + "upload";
		
		FilesDAO fDao = new FilesDAO();
		CommunityDAO cDao = new CommunityDAO();
		ActionForward af = new ActionForward();
		
		System.out.println("확인 :" + req.getParameter("communityNum"));
		
		List<FilesVO> files = fDao.select(communityNum);
	
		cDao.delete(communityNum);
		fDao.delete(communityNum);
		
		System.out.println(communityNum);
		for (int i = 0; i < files.size(); i++) {
			File f = new File(uploadFolder, files.get(i).getFileName());
			if(f.exists()) {
				f.delete();
			}
		}
		
		af.setRedirect(true);
		af.setPath(req.getContextPath()+"/community/CommunityListOk.com");
		
		return af;
	}

}

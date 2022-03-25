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
import com.mommy.app.community.vo.CommunityVO;
import com.mommy.app.community.vo.FilesVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class CommunityUpdateOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("utf-8");
		
		CommunityVO community = new CommunityVO();
		CommunityDAO cDao = new CommunityDAO();
		List<FilesVO> files = null;
		FilesDAO fDao = new FilesDAO();
		ActionForward af = new ActionForward();
		
		String uploadFolder = req.getSession().getServletContext().getRealPath("/") + "upload"; // 경로 확인 
		int fileSize = 1024 * 1024 * 5;//5M
		int communityNum = 0, page = 0;
		
		//파일을 form으로 전달할 때 MultipartRequest로 받는다.
		MultipartRequest multi = new MultipartRequest(req, uploadFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		System.out.println("들어옴1");
		
		
		page = Integer.parseInt(multi.getParameter("page"));
		communityNum = Integer.parseInt(multi.getParameter("communityNum"));
		community.setCommunityTitle(multi.getParameter("title"));
		community.setCommunityContent(multi.getParameter("editordata"));
		
		community.setCommunityCategory(Integer.parseInt(multi.getParameter("select")));
		community.setCommunityNum(communityNum);
		
		files = fDao.select(communityNum);
		
		//하나의 서비스를 구현하기 위한 DML의 집합 : 트랜잭션
		//************************
		cDao.update(community);
		fDao.delete(communityNum);
		fDao.insert(multi, communityNum);
		//************************
		
		files.forEach(file -> {
			File f = new File(uploadFolder, file.getFileName());
			if(f.exists()) {f.delete();}
		});
		
		//redirect일 경우 데이터를 전달할 수 있는 방법
		//1. 쿼리스트링으로 전달한다.
		//2. Flash(Spring 때 배운다).
		af.setRedirect(true);

		//목록보기(페이지 기억)
		af.setPath(req.getContextPath() + "/community/CommunityListOk.com?page=" + page);
		
		return af;
	}

}

package com.mommy.app.admin;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.admin.dao.AdminDAO;
import com.mommy.app.admin.dao.AdminFilesDAO;
import com.mommy.app.admin.vo.AdminFilesVO;
import com.mommy.app.admin.vo.AdminQnaVO;
import com.mommy.app.ask.dao.AskDAO;
import com.mommy.app.ask.vo.AskVO;


import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class AdminQnaUpdateOk implements Action{
		@Override
		public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
			req.setCharacterEncoding("utf-8");
		
			String uploadFolder = req.getSession().getServletContext().getRealPath("/") + "upload";
			int fileSize = 1024 * 1024 * 5;//5M

			ActionForward af = new ActionForward();
			AdminQnaVO admin = new AdminQnaVO();
			AdminDAO aDao = new AdminDAO();
			AdminFilesDAO afDao = new AdminFilesDAO();
			List<AdminFilesVO> files = null;
			
			int askNum = 0, page = 0;
			
			//파일을 form으로 전달할 때 MultipartRequest로 받는다.
			MultipartRequest multi = new MultipartRequest(req, uploadFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
			System.out.println("들어옴1");
			
			
			page = Integer.parseInt(multi.getParameter("page"));
			askNum = Integer.parseInt(multi.getParameter("askNum"));
			admin.setAskTitle(multi.getParameter("title"));
			admin.setAskContent(multi.getParameter("content"));
			admin.setAskAnswer(multi.getParameter("answer"));
			admin.setAskNum(askNum);
			
			files = afDao.select(askNum);
			
			//하나의 서비스를 구현하기 위한 DML의 집합 : 트랜잭션
			//************************
			aDao.update(admin);
			afDao.delete(askNum);
			afDao.insert(multi, askNum);
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
			af.setPath(req.getContextPath() + "/admin/AdminQnaListOk.ad?page=" + page);
			
			return af;
		}

	}
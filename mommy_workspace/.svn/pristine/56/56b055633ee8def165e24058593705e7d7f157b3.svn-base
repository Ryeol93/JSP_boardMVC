package com.mommy.app.service;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.service.dao.ProfileFilesDAO;
import com.mommy.app.service.dao.ServiceDAO;
import com.mommy.app.service.vo.ServiceVO;
import com.mommy.app.user.dao.UserDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class WriteMomOk implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HttpSession session = req.getSession();
		ServiceVO serviceVo = new ServiceVO();
		ServiceDAO serviceDao = new ServiceDAO();
		ProfileFilesDAO pfDao= new ProfileFilesDAO();
		ActionForward af = new ActionForward();
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		int userNum = (int) session.getAttribute("userNum");
		serviceVo.setUserNum(userNum);
		/*${pageContext.request.contextPath}/images/로고1.png "*/
		String realPath =req.getSession().getServletContext().getRealPath("/") + "profileData";
		// 절대경로	/*String uploadFolder = "E:\\Avery\\aigb_0900_avery\\jsp\\workspace\\boardMVC\\WebContent\\upload";*/
		//  E:\Avery\aigb_0900_avery\jspTeamProject\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\mommy_workspace\WebContent\images
		String uploadFolder = realPath;
//		System.out.println("새로 찾은 절대경로"+req.getSession().getServletContext().getRealPath("upload"));
		System.out.println(realPath);
		/*String uploadFolder = req.getContextPath()+"/WebContent/images/upload";*/
//							mommy_workspace\WebContent\images

		int fileSize = 1024 * 1024 * 5;//5M

		System.out.println(uploadFolder);
		//요청객체, 업로드폴더 경로, 파일의 크기, 인코딩 방식, 이름변경정책
		MultipartRequest multi = new MultipartRequest(req, uploadFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
	
		System.out.println("WriteMomOk 시터 프로필 작성");
		
		
	      System.out.println(multi.getParameter("inside")); // n
	      System.out.println(multi.getParameter("commit"));
	      System.out.println(multi.getParameter("food"));
	      System.out.println(multi.getParameter("clean"));
	      System.out.println(multi.getParameter("newborn"));  // n
	      System.out.println(multi.getParameter("baby")); 
	      System.out.println(multi.getParameter("kinder"));
	      System.out.println(multi.getParameter("elememtary"));
	      System.out.println(multi.getParameter("message")); // ?? 
	      System.out.println(multi.getParameter("startDate"));
	      System.out.println("요일 시작");
	      System.out.println(multi.getParameter("P_mon"));
	      System.out.println(multi.getParameter("P_tue"));
	      System.out.println(multi.getParameter("P_wed"));
	      System.out.println(multi.getParameter("P_thu"));
	      System.out.println(multi.getParameter("P_fri"));
	      System.out.println(multi.getParameter("P_sat"));
	      System.out.println(multi.getParameter("P_sun"));
	      System.out.println(multi.getParameter("P_morning"));
	      System.out.println(multi.getParameter("P_lunch"));
	      System.out.println(multi.getParameter("P_noon"));
	      System.out.println(multi.getParameter("P_week"));
	      System.out.println(multi.getParameter("P_month"));
	      System.out.println(multi.getParameter("P_quarter"));
	      System.out.println(multi.getParameter("P_semiAnnual"));
	      
	      System.out.println(multi.getParameter("transSido"));
	      System.out.println(multi.getParameter("transSiugun"));
	      System.out.println(multi.getParameter("transDong"));
	      
	      System.out.println("멀티 파일 시작");
		System.out.println(multi.getParameter("profilePicture"));
		System.out.println(multi.getParameter("attachQ"));
		
		System.out.println(multi.getParameter(multi.getFilesystemName("profilePicture")));
		System.out.println(multi.getParameter(multi.getFilesystemName("attachQ")));
		
		System.out.println("multi 끝");
		
		System.out.println(multi.getFile("profilePicture"));
		System.out.println(multi.getFile("attachQ"));
		
		System.out.println(multi.getFilesystemName("profilePicture"));
		System.out.println(multi.getFilesystemName("attachQ"));
		

		// profileProcess 
		serviceVo.setProfileProcess(1); // 디폴트 설정
		//   profileAttach == null로 
		
		
		
		serviceVo.setCareIndoor(transInt(multi.getParameter("inside"))); // n
		serviceVo.setCareCommit(transInt(multi.getParameter("commit")));
		serviceVo.setCareFood(transInt(multi.getParameter("food")));
		serviceVo.setCareClean(transInt(multi.getParameter("clean")));
		serviceVo.setBabyNewborn(transInt(multi.getParameter("newborn")));  // n
		serviceVo.setBabyChild(transInt(multi.getParameter("baby"))); 
		serviceVo.setBabyKinder(transInt(multi.getParameter("kinder")));
		serviceVo.setBabyElementary(transInt(multi.getParameter("elememtary")));
		serviceVo.setCareEmergency(transInt(multi.getParameter("careEmergency")));

		
		serviceVo.setProfileDescription(multi.getParameter("message")); // ?? 
		
		//serviceVo.setProfileDate(req.getParameter("startDate"));
		serviceVo.setP_periodStartDate(multi.getParameter("startDate"));
		System.out.println("startDate : "+serviceVo.getProfileDate());
		
		// careEmergency (긴급돌봄) 
		serviceVo.setP_mon(Integer.parseInt(multi.getParameter("P_mon")));
		serviceVo.setP_tue(Integer.parseInt(multi.getParameter("P_tue")));
		serviceVo.setP_wed(Integer.parseInt(multi.getParameter("P_wed")));
		serviceVo.setP_thu(Integer.parseInt(multi.getParameter("P_thu")));
		serviceVo.setP_fri(Integer.parseInt(multi.getParameter("P_fri")));
		serviceVo.setP_sat(Integer.parseInt(multi.getParameter("P_sat")));
		serviceVo.setP_sun(Integer.parseInt(multi.getParameter("P_sun")));
		
		System.out.println(req.getParameter("profileSalary"));
		serviceVo.setProfileSalary(Integer.parseInt(multi.getParameter("profileSalary")));
		
		serviceVo.setP_morning(Integer.parseInt(multi.getParameter("P_morning")));
		serviceVo.setP_lunch(Integer.parseInt(multi.getParameter("P_lunch")));
		serviceVo.setP_noon(Integer.parseInt(multi.getParameter("P_noon")));
		serviceVo.setP_week(Integer.parseInt(multi.getParameter("P_week")));
		serviceVo.setP_month(Integer.parseInt(multi.getParameter("P_month")));
		serviceVo.setP_quarter(Integer.parseInt(multi.getParameter("P_quarter")));
		serviceVo.setP_semiAnnual(Integer.parseInt(multi.getParameter("P_semiAnnual")));
		
		
		
		serviceVo.setLocationSido(multi.getParameter("transSido"));
		serviceVo.setLocationSigun(multi.getParameter("transSiugun"));
		serviceVo.setLocationDong(multi.getParameter("transDong"));
		
		serviceVo.setProfilePicture(multi.getFilesystemName("profilePicture"));
		
		// 부모 작성에서는 받지 않음
		// serviceVo.setProfileAttach(multi.getFilesystemName("attachQ"));
		
		
		serviceDao.insertProfile(serviceVo);
		pfDao.insert(multi, serviceDao.getSeq());
		


		
/*		System.out.println(req.getParameter("profilePicture"));
		System.out.println(req.getParameter("attachQ"));
		System.out.println(req.getContextPath());*/

		af.setRedirect(false);
		
		
		af.setPath("/service/LookMomProfileOk.ser"); 
		
		
		
		
		
		return af;
	}
	
/*	public int transDay(String data) {
		if(data == null) {
			return 0;
		}
		
		return 1;
	}*/
	
	public int transInt (String data) {
		if(data == null) {
			return 0;
		}
		if(data.equals("on")) {
			return 1;
		}
		return 0;
	}

}

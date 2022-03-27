package com.mommy.app.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.service.dao.ServiceDAO;
import com.mommy.app.service.vo.ParameterDTO;
import com.mommy.app.service.vo.ServiceDTO;

public class SearchJobOk2 implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		System.out.println("서치잡 오케이2들어옴");
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		HashMap<String, Integer> searchDetailMap = new HashMap<>();
		HashMap<String, Integer> modalInput = new HashMap<>();
		ParameterDTO param = new ParameterDTO();
		ServiceDAO dao = new ServiceDAO();
		int userStatus=1;

		List<ServiceDTO> jobList = new ArrayList<ServiceDTO>();
		
		LocalDate now = LocalDate.now();
		int year = now.getYear();
		
		
			System.out.println("서치잡 들왔다");
		
		//사용자가 요청한 페이지
		String temp = req.getParameter("page");
		//사용자가 요청한 페이지가 null이면 1페이지를,
		//null이 아니면 요청한 페이지를 page에 담아준다.
		int page = temp == null ? 1 : Integer.parseInt(temp);
		//한 페이지에 출력되는 게시글의 개수
		int rowCount = 5;
		//한 화면에 나오는 페이지 번호 수
		int pageSize = 10;
		
		//페이지에서 출력되는 게시글 중 첫번째 게시글의 인덱스
		int startRow = (page - 1) * rowCount;
		
		System.out.println("page 서치잡 : "  + page);
		System.out.println("startRow 서치잡: " + startRow);
		System.out.println("서치잡 들어왔다");
		
		searchDetailMap.put("startRow", startRow);
		searchDetailMap.put("rowCount", rowCount);
		searchDetailMap.put("userStatus", userStatus);
		searchDetailMap.put("profileProcess", 1);
		modalInput.put("startRow", startRow);
		modalInput.put("rowCount", rowCount);
		modalInput.put("userStatus", userStatus);
		modalInput.put("profileProcess", 1);
		param.setStartRow(startRow);
		param.setRowCount(rowCount);
		
		//화면에 출력되는 페이지 번호 중
		//시작 페이지(1, 11, 21, ....)
	/*	int startPage = ((page - 1) / pageSize) * pageSize + 1;
		//끝 페이지(10, 20, 30, ...)
		int endPage = startPage + pageSize - 1;
		//실제 마지막 게시글이 출력되는 마지막 페이지 번호
		int realEndPage = (int)Math.ceil(total / (double)rowCount);*/
	
		//만약 화면에서의 마지막 페이지가 실제 마지막 페이지보다 크다면,
		//실제 마지막 페이지를 endPage에 담아준다.
		//endPage는 항상 10단위로 끝나기 때문에, 14페이지가 마지막 페이지일 경우
		//14페이지를 endPage에 담아준다. 
		/*endPage = endPage > realEndPage ? realEndPage : endPage;*/
		
		
		if( req.getParameter("check")!=null) {
	
		searchDetailMap.put("babyNewborn", Integer.parseInt(req.getParameter("babyNewborn")));
		searchDetailMap.put("babyKinder", Integer.parseInt(req.getParameter("babyKinder")));
		searchDetailMap.put("babyChild", Integer.parseInt(req.getParameter("babyChild")));
		searchDetailMap.put("babyElementary", Integer.parseInt(req.getParameter("babyElementary")));
		searchDetailMap.put("P_mon", Integer.parseInt(req.getParameter("P_mon")));
		searchDetailMap.put("P_tue", Integer.parseInt(req.getParameter("P_tue")));
		searchDetailMap.put("P_wed", Integer.parseInt(req.getParameter("P_wed")));
		searchDetailMap.put("P_thu", Integer.parseInt(req.getParameter("P_thu")));
		searchDetailMap.put("P_fri", Integer.parseInt(req.getParameter("P_fri")));
		searchDetailMap.put("P_sat", Integer.parseInt(req.getParameter("P_sat")));
		searchDetailMap.put("P_sun", Integer.parseInt(req.getParameter("P_sun")));
		searchDetailMap.put("P_morning", Integer.parseInt(req.getParameter("P_morning")));
		searchDetailMap.put("P_lunch", Integer.parseInt(req.getParameter("P_lunch")));
		searchDetailMap.put("P_noon", Integer.parseInt(req.getParameter("P_noon")));
		searchDetailMap.put("careIndoor", Integer.parseInt(req.getParameter("careIndoor")));
		searchDetailMap.put("careCommit", Integer.parseInt(req.getParameter("careCommit")));
		searchDetailMap.put("careFood", Integer.parseInt(req.getParameter("careFood")));
		searchDetailMap.put("careClean", Integer.parseInt(req.getParameter("careClean")));
		searchDetailMap.put("careStudy", Integer.parseInt(req.getParameter("careStudy")));
		
		searchDetailMap.put("userStatus", userStatus);
		} 

//		돌봄유형 모달 ----------------------------
		if(req.getParameter("careType")!=null) {
			System.out.println("돌봄유형모달들어왔다");
			switch (req.getParameter("careType")) {
			
			case "1": jobList = dao.careTypeSchool(modalInput);
			System.out.println("잡리스트"+jobList);
			System.out.println("1번들어옴!");
				break;
			case "2": jobList = dao.teach(modalInput);
				break;
			case "3": jobList = dao.fullTime(modalInput);
				break;
			case "4": jobList = dao.shortTime(modalInput);
				break;
			case "5": jobList = dao.careEmergency(modalInput);
				break;
			case "6": jobList = dao.searchDetail(searchDetailMap);
				break;
			}
//		돌봄지역모달------------------------------- 
		}else if(req.getParameter("locationSido")!=null) {
			System.out.println("지역모달들어왔다");
			if(req.getParameter("locationSido").contains("선택")) {
				param.setLocationSido(null);
			}else {
				param.setLocationSido(req.getParameter("locationSido"));
			}
			
			if(req.getParameter("locationSigun").contains("선택")) {
//				System.out.println("시군 선택시 들어와따");
				param.setLocationSigun(null);
			}else {
				param.setLocationSigun( req.getParameter("locationSigun"));
			}
			if(req.getParameter("locationDong").contains("선택")) {
//				System.out.println("동 선택들어와따");
				param.setLocationDong(null);
			}else {
				param.setLocationDong( req.getParameter("locationDong"));
			}
			param.setUserStatus(userStatus);
			jobList = dao.searchArea(param); 
			 System.out.println("리스트사이즈" +jobList.size());
//		상세검색모달-------------------------------
		 }else {
			 jobList = dao.searchDetail(searchDetailMap);
		 }
				
		JSONArray jobs = new JSONArray();
		System.out.println("서치잡오케2");
		for(ServiceDTO s : jobList) {
			JSONObject job = new JSONObject();
			job.put("userNum", s.getUserNum());
			job.put("ProfileDescription", s.getProfileDescription());
			job.put("LocationSido", s.getLocationSido());
			job.put("LocationSigun", s.getLocationSigun());
			job.put("age", year - s.getUserBirthYear());
			job.put("getProfileSalary",s.getProfileSalary());
			job.put("mon", s.getP_mon());
			job.put("tue", s.getP_tue());
			job.put("wed", s.getP_wed());
			job.put("thu", s.getP_thu());
			job.put("fri", s.getP_fri());
			job.put("sat", s.getP_sat());
			job.put("sun", s.getP_sun());
			job.put("BabyNewborn", s.getBabyNewborn());
			job.put("BabyChild", s.getBabyChild());
			job.put("BabyKinder", s.getBabyKinder());
			job.put("BabyElementary", s.getBabyElementary());
			job.put("morning", s.getP_morning());
			job.put("lunch", s.getP_lunch());
			job.put("noon", s.getP_noon());
			job.put("CareIndoor", s.getCareIndoor());
			job.put("CareCommit", s.getCareCommit());
			job.put("CareFood", s.getCareFood());
			job.put("CareStudy", s.getCareStudy());
			job.put("CareClean", s.getCareClean());
			job.put("CheckMedi", s.getCheckMedi());
			job.put("CheckCitizen", s.getCheckCitizen());
			job.put("CheckMom", s.getCheckMom());
			job.put("CheckTeacher", s.getCheckTeacher());
			job.put("CheckUniversity", s.getCheckUniversity());
			job.put("periodStartDate", s.getP_periodStartDate());
			job.put("ProfilePicture", s.getProfilePicture());
			job.put("profileNum", s.getProfileNum());
			jobs.add(job); 
		}
		
		PrintWriter out = resp.getWriter();
		
		out.print(jobs.toJSONString());
		out.close();
		
		return null;
	}

}

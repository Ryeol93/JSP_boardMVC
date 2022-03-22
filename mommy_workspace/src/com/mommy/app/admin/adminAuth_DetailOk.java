package com.mommy.app.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.admin.dao.AdminDAO;
import com.mommy.app.admin.vo.AdminAuthDTO;
import com.mommy.app.admin.vo.AdminAuthVO;
import com.mommy.app.admin.vo.AdminNoticeVO;

public class adminAuth_DetailOk  implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ActionForward af = new ActionForward();
		AdminAuthDTO aDto =new AdminAuthDTO();
		AdminAuthVO aDvo =new AdminAuthVO();
		AdminDAO aDao = new AdminDAO();
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
	
	 	if(req.getParameter("CheckMedi")!=null) {
		aDto.setCheckMedi(Integer.parseInt(req.getParameter("CheckMedi")));
			}else if(req.getParameter("CheckMedi")==null) {
			aDto.setCheckMedi(0); 
			}
			
			if(req.getParameter("CheckUniversity")!=null) {
		aDto.setCheckUniversity(Integer.parseInt(req.getParameter("CheckUniversity")));
			}else if(req.getParameter("CheckUniversity")==null) {
				aDto.setCheckUniversity(0); 
			}
			if(req.getParameter("CheckCitizen")!=null) {
		aDto.setCheckCitizen(Integer.parseInt(req.getParameter("CheckCitizen")));
			}else if(req.getParameter("CheckCitizen")==null) {
				aDto.setCheckCitizen(0); 
			}
			if(req.getParameter("CheckMom")!=null) {
		aDto.setCheckMom(Integer.parseInt(req.getParameter("CheckMom")));
			}else if(req.getParameter("CheckMom")==null) {
				aDto.setCheckMom(0); 
			}
			if(req.getParameter("CheckTeacher")!=null) {
		aDto.setCheckTeacher(Integer.parseInt(req.getParameter("CheckTeacher")));
			}else if(req.getParameter("CheckTeacher")==null) {
				aDto.setCheckTeacher(0); 
			}
		aDto.setPofileNum(Integer.parseInt(req.getParameter("ProfileNum")));
		
	aDao.CheckBox_Update(aDto);
		
	
		

//		ProfileNum=aDto.getProfileNum(req.getParameter("userNum"));
//
//        req.setAttribute("sitterInfo", dto);	
//		
//		
//        req.setAttribute("sitterInfo", dto);


		return af;
	}

}

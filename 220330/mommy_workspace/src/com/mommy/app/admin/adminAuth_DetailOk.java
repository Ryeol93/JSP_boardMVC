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
		
		
		
		System.out.println(req.getParameter("checkMedi")+"checkMedi");
		System.out.println(req.getParameter("checkUniversity")+"checkUniversity");
		System.out.println(req.getParameter("checkCitizen")+"checkCitizen");
		System.out.println(req.getParameter("checkMom")+"checkMom");
		System.out.println(req.getParameter("checkTeacher")+"checkTeacher");
		System.out.println(req.getParameter("profileNum")+"profileNum");
		
		
		if(req.getParameter("checkCitizen")!=null) {
			aDto.setCheckCitizen(Integer.parseInt(req.getParameter("checkCitizen")));
		}else if(req.getParameter("checkCitizen")==null) {
			aDto.setCheckCitizen(0); 
		}
		System.out.println(req.getParameter("checkCitizen")+"checkCitizen");
 	if(req.getParameter("checkMedi")!=null) {
 		aDto.setCheckMedi(Integer.parseInt(req.getParameter("checkMedi")));
			}else if(req.getParameter("checkMedi")==null) {
			aDto.setCheckMedi(0); 
			}
 	System.out.println(req.getParameter("checkMedi")+"checkMedi");
 	if(req.getParameter("checkMom")!=null) {
 		aDto.setCheckMom(Integer.parseInt(req.getParameter("checkMom")));
 	}else if(req.getParameter("checkMom")==null) {
 		aDto.setCheckMom(0); 
 	}
 	if(req.getParameter("checkTeacher")!=null) {
 		aDto.setCheckTeacher(Integer.parseInt(req.getParameter("checkTeacher")));
 	}else if(req.getParameter("checkTeacher")==null) {
 		aDto.setCheckTeacher(0); 
 	}
	aDto.setPofileNum(Integer.parseInt(req.getParameter("profileNum")));
	
 	
 	
 	
			
			if(req.getParameter("checkUniversity")!=null) {
				aDto.setCheckUniversity(Integer.parseInt(req.getParameter("checkUniversity")));
			}else if(req.getParameter("checkUniversity")==null) {
				aDto.setCheckUniversity(0); 
			}System.out.println(req.getParameter("checkUniversity")+"checkUniversity");
			
			
	

		
		
		
	
		
		
	
		
		aDao.CheckBox_Update(aDto);
		
	
		

//		ProfileNum=aDto.getProfileNum(req.getParameter("userNum"));
//
//        req.setAttribute("sitterInfo", dto);	
//		
//		
//        req.setAttribute("sitterInfo", dto);


		return null;
	}

}

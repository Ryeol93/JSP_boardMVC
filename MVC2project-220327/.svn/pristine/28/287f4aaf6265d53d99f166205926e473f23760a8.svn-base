package com.mommy.app.service;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;

public class MomDetailModalOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HashMap<String, Integer> modalInput= new HashMap<>();
		ActionForward af = new ActionForward();
		
		
		af.setRedirect(false);
		af.setPath("/app/serviceSearch/searchMom.jsp");
		return af;
	}

}

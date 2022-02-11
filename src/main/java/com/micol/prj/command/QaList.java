package com.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.micol.prj.common.Command;
import com.micol.prj.qa.service.QaService;
import com.micol.prj.qa.serviceImpl.QaServiceImpl;

public class QaList implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse res) {
		
		QaService qaDAO=new QaServiceImpl();
		req.setAttribute("qa", qaDAO.qaSelectList());
		return "qa/qaList";
		
		
		
	}

}

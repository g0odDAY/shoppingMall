package com.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.micol.prj.common.Command;
import com.micol.prj.qa.service.QaService;
import com.micol.prj.qa.serviceImpl.QaServiceImpl;
import com.micol.prj.qa.vo.QaVO;

public class QaSelect implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse res) {
		QaService  qaDAO=new QaServiceImpl();
		QaVO vo=new QaVO();
		int n=Integer.valueOf(req.getParameter("qaNumber"));
		System.out.println(n);
		vo.setQaNumber(Integer.valueOf(req.getParameter("qaNumber")));
		req.setAttribute("qa", qaDAO.qaSelect(vo));
		return "qa/qaSelect";
	}

}

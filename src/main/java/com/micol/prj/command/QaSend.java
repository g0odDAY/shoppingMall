package com.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.micol.prj.common.Command;
import com.micol.prj.qa.service.QaService;
import com.micol.prj.qa.serviceImpl.QaServiceImpl;
import com.micol.prj.qa.vo.QaVO;

public class QaSend implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse res) {
		QaService qaDAO = new QaServiceImpl();
		QaVO vo = new QaVO();
		vo.setQaWriter(req.getParameter("qaWriter"));
		vo.setQaTitle(req.getParameter("qaTitle"));
		vo.setQaContent(req.getParameter("qaContent"));
		int n = qaDAO.qaInsert(vo);
		if (n != 0) {
			return "qaList.do";
		} else {
			return "error/error";
		}
	}

}

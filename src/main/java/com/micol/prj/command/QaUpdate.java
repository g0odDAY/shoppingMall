package com.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.micol.prj.common.Command;
import com.micol.prj.qa.service.QaService;
import com.micol.prj.qa.serviceImpl.QaServiceImpl;
import com.micol.prj.qa.vo.QaVO;

public class QaUpdate implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse res) {
		QaService dao = new QaServiceImpl();
		QaVO vo = new QaVO();
		vo.setQaNumber(Integer.parseInt(req.getParameter("qaNumber")));
		vo.setQaTitle(req.getParameter("qaTitle"));
		vo.setQaContent(req.getParameter("qaContent"));
		int r = dao.qaUpdate(vo);
		if (r > 0) {
			return "qaSelect.do";
		} else {
			return "error/error";
		}
	}

}

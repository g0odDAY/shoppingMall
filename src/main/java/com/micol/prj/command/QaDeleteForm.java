package com.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.micol.prj.common.Command;
import com.micol.prj.qa.service.QaService;
import com.micol.prj.qa.serviceImpl.QaServiceImpl;
import com.micol.prj.qa.vo.QaVO;

public class QaDeleteForm implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse res) {
		QaService dao = new QaServiceImpl();
		QaVO vo = new QaVO();
		vo.setQaNumber(Integer.parseInt(req.getParameter("qaNumber")));
		int r = dao.qaDelete(vo);
		if (r > 0) {
			return "qaList.do";
		} else {
			return "error/error";
		}
	}

}

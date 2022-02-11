package com.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.micol.prj.common.Command;
import com.micol.prj.qa.service.QaService;
import com.micol.prj.qa.serviceImpl.QaServiceImpl;
import com.micol.prj.qa.vo.QaVO;
import com.micol.prj.reply.service.ReplyService;
import com.micol.prj.reply.serviceImpl.ReplyServiceImpl;
import com.micol.prj.reply.vo.ReplyVO;

public class QaSelect implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse res) {
		QaService qaDAO = new QaServiceImpl();
		QaVO vo = new QaVO();

		ReplyService replyDAO = new ReplyServiceImpl();
		ReplyVO re = new ReplyVO();

		re.setReplyNumber(req.getParameter("qaNumber"));
		vo.setQaNumber(Integer.valueOf(req.getParameter("qaNumber")));

		req.setAttribute("qa", qaDAO.qaSelect(vo));
		req.setAttribute("reply", replyDAO.replySelectList(re));
		return "qa/qaSelect";
	}

}

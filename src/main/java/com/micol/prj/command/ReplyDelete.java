package com.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.micol.prj.common.Command;
import com.micol.prj.reply.service.ReplyService;
import com.micol.prj.reply.serviceImpl.ReplyServiceImpl;
import com.micol.prj.reply.vo.ReplyVO;

public class ReplyDelete implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse res) {
		ReplyService dao = new ReplyServiceImpl();
		ReplyVO vo = new ReplyVO();
		vo.setReplyId(Integer.valueOf(req.getParameter("replyId")));
		dao.replyDelete(vo);
		return "qaSelect.do";
	}

}

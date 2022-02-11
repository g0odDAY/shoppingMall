package com.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.micol.prj.common.Command;
import com.micol.prj.reply.service.ReplyService;
import com.micol.prj.reply.serviceImpl.ReplyServiceImpl;
import com.micol.prj.reply.vo.ReplyVO;

public class ReplyAdd implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse res) {
		String page = null;
		ReplyService replyDAO = new ReplyServiceImpl();
		ReplyVO vo = new ReplyVO();
		vo.setReplyNumber(req.getParameter("replyNumber"));
		vo.setReplyContent(req.getParameter("replyContent"));
		vo.setReplyUser(req.getParameter("replyUser"));
		int n = replyDAO.replyInsert(vo);
		if (n != 0) {
			page = "qaSelect.do";
		}
		return page;
	}

}

package com.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.micol.prj.common.Command;

import com.micol.prj.reply.service.ReplyService;
import com.micol.prj.reply.serviceImpl.ReplyServiceImpl;
import com.micol.prj.reply.vo.ReplyVO;

public class AddReply implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse res) {
		String content=req.getParameter("replyContent");
		String number=req.getParameter("replyNumber");
		String user=req.getParameter("replyUser");
		String page=null;
		System.out.println(content+number+user);
		ReplyService  replyDAO=new ReplyServiceImpl();
		ReplyVO vo=new ReplyVO();
		vo.setReplyNumber(number);
		vo.setReplyContent(content);
		vo.setReplyUser(user);
		int n=replyDAO.replyInsert(vo);
		if(n!=0) {
			page="qa/qaSelect";
		}
		return page;
	}

}

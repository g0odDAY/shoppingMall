package com.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.micol.prj.common.Command;
import com.micol.prj.notice.service.NoticeService;
import com.micol.prj.notice.serviceImpl.NoticeServiceImpl;

public class NoticeList implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse res) {
		NoticeService dao = new NoticeServiceImpl();
		req.setAttribute("notices", dao.noticeSelectList());
		return "/notice/noticeList";
	}

}

package com.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.micol.prj.common.Command;
import com.micol.prj.notice.service.NoticeService;
import com.micol.prj.notice.serviceImpl.NoticeServiceImpl;
import com.micol.prj.notice.vo.NoticeVO;

public class NoticeInsert implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse res) {
		NoticeService noticeDao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		vo.setNoticeWriter(req.getParameter("noticeWriter"));
		vo.setNoticeTitle(req.getParameter("noticeTitle"));
		vo.setNoticeSubject(req.getParameter("noticeSubject"));
		int n = noticeDao.noticeInsert(vo);
		if (n > 0) {
			return "noticeList.do";
		} else {
			return "/error/error";
		}
	}

}

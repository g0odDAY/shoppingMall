package com.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.micol.prj.common.Command;
import com.micol.prj.notice.service.NoticeService;
import com.micol.prj.notice.serviceImpl.NoticeServiceImpl;
import com.micol.prj.notice.vo.NoticeVO;

public class NoticeUpdate implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse res) {
		NoticeService dao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		vo.setNoticeId(Integer.valueOf(req.getParameter("noticeId")));
		vo.setNoticeTitle(req.getParameter("noticeTitle"));
		vo.setNoticeSubject(req.getParameter("noticeSubject"));
		int n = dao.noticeUpdate(vo);
		if (n > 0) {
			return "noticeList.do";
		} else {
			req.setAttribute("massage", "등록에 실패했습니다.");
			return "/notice/noticeError";
		}
	}

}

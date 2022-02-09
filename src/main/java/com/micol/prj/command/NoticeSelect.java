package com.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.micol.prj.common.Command;
import com.micol.prj.notice.service.NoticeService;
import com.micol.prj.notice.serviceImpl.NoticeServiceImpl;
import com.micol.prj.notice.vo.NoticeVO;

public class NoticeSelect implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse res) {
		NoticeService noticeDao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		vo.setNoticeId(Integer.valueOf(req.getParameter("noticeId")));
		vo = noticeDao.noticeSelect(vo);
		if(vo != null) {
			noticeDao.noticeHitUp(vo.getNoticeId());
			req.setAttribute("notice", vo);
		} else {
			req.setAttribute("massage", "조회된 데이터가 없습니다.");
			return "/notice/noticeError";
		}
		return "/notice/noticeSelect";
	}

}

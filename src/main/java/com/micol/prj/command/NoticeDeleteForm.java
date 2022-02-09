package com.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.micol.prj.common.Command;
import com.micol.prj.notice.service.NoticeService;
import com.micol.prj.notice.serviceImpl.NoticeServiceImpl;
import com.micol.prj.notice.vo.NoticeVO;

public class NoticeDeleteForm implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse res) {
		NoticeService dao = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		vo.setNoticeId(Integer.parseInt(req.getParameter("noticeId")));
		dao.noticeDelete(vo);
		return "noticeList.do";
	}

}

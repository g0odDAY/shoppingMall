package com.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.micol.prj.common.Command;

public class NoticeUpdateForm implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse res) {
		return "notice/noticeUpdateForm";
	}

}

package com.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.micol.prj.common.Command;

public class DeleteReply implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse res) {
		// TODO Auto-generated method stub
		
		String content=req.getParameter("code");
		System.out.println("content=="+content);
		return null;
	}

}

package com.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.micol.prj.common.Command;


public class RegisterCommand implements Command {
	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		return "member/register";
	}

}

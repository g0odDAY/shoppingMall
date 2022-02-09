package com.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.micol.prj.member.service.MemberService;
import com.micol.prj.member.serviceImpl.MemberServiceImpl;

import com.micol.prj.common.Command;

public class IdCheck implements com.micol.prj.common.Command {

	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		// 아이디 중복체크(Ajax 방법으로)
		MemberService memberDao = new MemberServiceImpl();
		String id = req.getParameter("id");
//		System.out.println(id + "================");
		boolean b = memberDao.isIdCheck(id);
		System.out.println(b);
		if(!b) { // 0은 false 1은 true 
			return "ajax:0"; // 존재할때
		} else {
			return "ajax:1"; // 존재하지 않을때
		}
	}

}

package com.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.micol.prj.common.Command;
import com.micol.prj.member.service.MemberService;
import com.micol.prj.member.serviceImpl.MemberServiceImpl;
import com.micol.prj.member.vo.MemberVO;

public class Result implements Command {
	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
	
		
			// 로그인
			MemberService memberDao = new MemberServiceImpl();
			
			MemberVO vo = new MemberVO();
			
			vo.setId(req.getParameter("id"));
			vo.setPassword(req.getParameter("password"));
			vo.setName(req.getParameter("name"));
			vo.setTel(req.getParameter("tel"));
			vo.setAddress(req.getParameter("address"));
			
			String page = null;
			int n = memberDao.memberInsert(vo);
			if(n != 0) {
				req.setAttribute("member", vo);
				page = "main.do";
			} else {
				req.setAttribute("message", "회원가입 실패 다시 입력하세요.");
				page = "member/memberError";
			}
			return page;
		}

	}
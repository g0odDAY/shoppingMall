package com.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.micol.prj.common.Command;

public class RegisterForm implements Command {
	@Override
	public String exec(HttpServletRequest req, HttpServletResponse res) {
//		register 가입하기 클릭 후 DB 입력 및 넘기는 값설정
		// TODO Auto-generated method stub
		return "member/register";
	}

}

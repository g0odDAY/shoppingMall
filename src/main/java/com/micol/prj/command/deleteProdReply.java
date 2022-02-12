package com.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.micol.prj.common.Command;
import com.micol.prj.prodreply.service.ProdReplyService;
import com.micol.prj.prodreply.serviceImpl.ProdReplyServiceImpl;
import com.micol.prj.prodreply.vo.ProdReplyVO;

public class deleteProdReply implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse res) {
		// TODO Auto-generated method stub
		ProdReplyService dao=new ProdReplyServiceImpl();
		String code=req.getParameter("serial");
		ProdReplyVO vo=new ProdReplyVO();
		vo.setSerial(code);
		System.out.println(code);
		dao.prodReplyDelete(vo);
		return "shop/selectProd";
	}

}

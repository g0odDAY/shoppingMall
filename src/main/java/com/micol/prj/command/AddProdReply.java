package com.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.micol.prj.common.Command;
import com.micol.prj.prodreply.service.ProdReplyService;
import com.micol.prj.prodreply.serviceImpl.ProdReplyServiceImpl;
import com.micol.prj.prodreply.vo.ProdReplyVO;

public class AddProdReply implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse res) {
		String writer=req.getParameter("prodReplyWriter");
		String content=req.getParameter("prodReplyContent");
		String prodName=req.getParameter("prodReplyName");
		ProdReplyService service =new ProdReplyServiceImpl();
		ProdReplyVO vo=new ProdReplyVO();
		vo.setContent(content);
		vo.setProdName(prodName);
		vo.setWriter(writer);
		service.prodReplyInsert(vo);
		req.setAttribute("112", vo);
		return "shop/selectProd";
	}

}

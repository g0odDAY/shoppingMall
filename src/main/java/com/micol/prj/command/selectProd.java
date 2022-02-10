package com.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.micol.prj.common.Command;
import com.micol.prj.prod.service.ProdService;
import com.micol.prj.prod.serviceImpl.ProdServiceImpl;
import com.micol.prj.prod.vo.ProdVO;
import com.micol.prj.prodreply.service.ProdReplyService;
import com.micol.prj.prodreply.serviceImpl.ProdReplyServiceImpl;
import com.micol.prj.prodreply.vo.ProdReplyVO;

public class selectProd implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse res) {
		// TODO Auto-generated method stub
		String name=req.getParameter("selectName");
		ProdService service=new ProdServiceImpl();
		ProdVO vo=new ProdVO();
		
		ProdReplyService service1=new ProdReplyServiceImpl();
		ProdReplyVO re=new ProdReplyVO();
		
		re.setProdName(name);
		service1.prodReplySelectList(re);
		vo.setProdName(name);
		vo=service.selectProd(vo);
		req.setAttribute("prod", vo);
		req.setAttribute("prodReply", service1.prodReplySelectList(re));
		return "shop/selectProd";
	}

}

package com.micol.prj.command;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.micol.prj.common.Command;
import com.micol.prj.prod.service.ProdService;
import com.micol.prj.prod.serviceImpl.ProdServiceImpl;


public class prodList implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse res) {
		ProdService dao = new ProdServiceImpl();
		
		System.out.println("prodListDAO : " + dao.prodList());
		req.setAttribute("prod", dao.prodList());
		
		return "shop/prodList";
	
	}

}

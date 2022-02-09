package com.micol.prj.command;




import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.micol.prj.common.Command;
import com.micol.prj.prod.service.ProdService;
import com.micol.prj.prod.serviceImpl.ProdServiceImpl;
import com.micol.prj.prod.vo.ProdVO;



public class ProdAdd implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse res) {
		String id=req.getParameter("prodName");
		String dis=req.getParameter("prodDis");
		String price=req.getParameter("prodPrice");
		System.out.println(id+dis+price);
		ProdService prodDAO=new ProdServiceImpl();
		ProdVO vo=new ProdVO();
		vo.setProdName(id);
		vo.setProdDis(dis);
		vo.setProdPrice(price);
		prodDAO.insertProd(vo);
		
		return "shop/prodList";

		
		
	}

	
}

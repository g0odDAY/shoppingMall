package com.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.micol.prj.common.Command;

public class prodList implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse res) {
		// TODO Auto-generated method stub
		return "shop/prodList";
		create table product(
			    prod_name varchar2(50),
			    prod_dis varchar2(500),
			    prod_price varchar2(50),
			    prod_file varchar2(50)
			);
	}

}

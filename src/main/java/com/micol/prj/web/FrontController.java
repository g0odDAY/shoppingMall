package com.micol.prj.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.micol.prj.command.LoginForm;
import com.micol.prj.command.MainCommand;
import com.micol.prj.command.Qa;
import com.micol.prj.command.QaList;
import com.micol.prj.command.Register;
import com.micol.prj.command.Shop;
import com.micol.prj.common.Command;


@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String,Command> map;
    public FrontController() {
        super();
      
    }

	
	public void init(ServletConfig config) throws ServletException {
		map=new HashMap<String,Command>();
		map.put("/main.do", new MainCommand());
		map.put("/loginForm.do", new LoginForm());
		map.put("/register.do", new Register());
		map.put("/shop.do", new Shop());
		map.put("/qa.do", new Qa());
		map.put("/qaList.do", new QaList());
	}

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String uri=request.getRequestURI();
		String contextPath=request.getContextPath();
		String page = uri.substring(contextPath.length());
		Command command=map.get(page);
		String viewPage=command.exec(request, response);
		if(!viewPage.endsWith(".do")) {
			viewPage=viewPage+".tiles";
		}
		RequestDispatcher dis=request.getRequestDispatcher(viewPage);
		dis.forward(request, response);
	}

}

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

import com.micol.prj.command.AddProdReply;
import com.micol.prj.command.AddReply;
import com.micol.prj.command.IdCheck;
import com.micol.prj.command.LoginCommand;
import com.micol.prj.command.LoginForm;
import com.micol.prj.command.LogoutCommand;
import com.micol.prj.command.MainCommand;
import com.micol.prj.command.NoticeDeleteForm;
import com.micol.prj.command.NoticeInsert;
import com.micol.prj.command.NoticeInsertForm;
import com.micol.prj.command.NoticeList;
import com.micol.prj.command.NoticeSelect;
import com.micol.prj.command.NoticeUpdate;
import com.micol.prj.command.ProdAdd;
import com.micol.prj.command.ProdRegister;
import com.micol.prj.command.QaForm;
import com.micol.prj.command.QaList;
import com.micol.prj.command.QaSelect;
import com.micol.prj.command.QaSend;
import com.micol.prj.command.Register;
import com.micol.prj.command.RegisterCommand;
import com.micol.prj.command.RegisterForm;
import com.micol.prj.command.Result;
import com.micol.prj.command.prodList;
import com.micol.prj.command.selectProd;
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
		//로그인
		  map.put("/main.do", new MainCommand());
	      map.put("/loginForm.do", new LoginForm());
	      map.put("/register.do", new Register());
	      map.put("/login.do",new LoginCommand());
	      map.put("/logout.do",new LogoutCommand());
	      map.put("/idCheck.do",new IdCheck());
	      map.put("/login.do", new LoginCommand());
	      map.put("/register.do",new RegisterCommand());
	      map.put("/Register.do", new RegisterForm());
	      map.put("/Result.do", new Result());

	
		//notice
		map.put("/noticeList.do", new NoticeList());
		map.put("/noticeSelect.do", new NoticeSelect());
		map.put("/noticeInsertForm.do", new NoticeInsertForm());
		map.put("/noticeInsert.do", new NoticeInsert());
//		map.put("/noticeUpdateForm.do", new NoticeUpdateForm());
		map.put("/noticeUpdate.do", new NoticeUpdate());
		map.put("/noticeDeleteForm.do", new NoticeDeleteForm());
		
		
		
		//qa
		map.put("/qaForm.do", new QaForm());
		map.put("/qaList.do", new QaList());
		map.put("/qaSend.do", new QaSend());
		map.put("/qaSelect.do", new QaSelect());
		
		//상품등록
		map.put("/prodAdd.do", new ProdAdd());
		map.put("/prodRegister.do", new ProdRegister());
		map.put("/prodList.do", new prodList());
		map.put("/selectProd.do", new selectProd());
		map.put("/addProdReply.do", new AddProdReply());
		//댓글
		map.put("/addReply.do", new AddReply());
		
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

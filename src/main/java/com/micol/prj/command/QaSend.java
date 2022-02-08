package com.micol.prj.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.micol.prj.common.Command;
import com.micol.prj.qa.service.QaService;
import com.micol.prj.qa.serviceImpl.QaServiceImpl;
import com.micol.prj.qa.vo.QaVO;

public class QaSend implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse res) {
		String w=req.getParameter("qa_writer");
		String t=req.getParameter("qa_title");
		String c=req.getParameter("qa_content");
		String date=req.getParameter("qa_date");
		System.out.println(w+t+c+date);
		QaService qaDAO=new QaServiceImpl();
		QaVO vo=new QaVO();
		vo.setQaWriter(w);
		vo.setQaTitle(t);
		vo.setQaContent(c);
		vo.setQaDate(date);
		String viewPage=null;
		int n=qaDAO.qaInsert(vo);
		if(n != 0) {
			viewPage="qaList.do";
		}else {
			req.setAttribute("msg", "등록실패!");
			viewPage="qa/qaError";
		}
		return viewPage;
	}

}

package com.micol.prj.prodreply.service;

import java.util.List;

import com.micol.prj.prodreply.vo.ProdReplyVO;


public interface ProdReplyService {
	int prodReplyInsert(ProdReplyVO vo);
	List<ProdReplyVO> prodReplySelectList(ProdReplyVO vo);
}

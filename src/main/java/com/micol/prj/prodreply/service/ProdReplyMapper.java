package com.micol.prj.prodreply.service;

import java.util.List;

import com.micol.prj.prodreply.vo.ProdReplyVO;

public interface ProdReplyMapper {
	int prodReplyInsert(ProdReplyVO vo);
	List<ProdReplyVO> prodReplySelectList(ProdReplyVO vo);
}

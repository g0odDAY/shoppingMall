package com.micol.prj.reply.service;

import java.util.List;

import com.micol.prj.reply.vo.ReplyVO;

public interface ReplyMapper {
	int replyInsert(ReplyVO vo);
	List<ReplyVO> replySelectList(ReplyVO vo);
	
}

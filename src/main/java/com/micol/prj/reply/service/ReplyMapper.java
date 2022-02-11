package com.micol.prj.reply.service;

import java.util.List;

import com.micol.prj.reply.vo.ReplyVO;

public interface ReplyMapper {
	List<ReplyVO> replySelectList(ReplyVO vo);
	int replyInsert(ReplyVO vo);
	int replyDelete(ReplyVO vo);
	
}

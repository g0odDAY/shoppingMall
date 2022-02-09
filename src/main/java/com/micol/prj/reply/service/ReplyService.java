package com.micol.prj.reply.service;

import java.util.List;

import com.micol.prj.reply.vo.ReplyVO;

public interface ReplyService {
	int replyInsert(ReplyVO vo);
	List<ReplyVO> replySelectList(ReplyVO vo);
}

package com.micol.prj.reply.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.micol.prj.common.DataSource;

import com.micol.prj.reply.service.ReplyMapper;
import com.micol.prj.reply.service.ReplyService;
import com.micol.prj.reply.vo.ReplyVO;

public class ReplyServiceImpl implements ReplyService{
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private ReplyMapper map=sqlSession.getMapper(ReplyMapper.class);
	@Override
	public int replyInsert(ReplyVO vo) {
		// TODO Auto-generated method stub
		return map.replyInsert(vo);
	}
	@Override
	public List<ReplyVO> replySelectList(ReplyVO vo) {
		// TODO Auto-generated method stub
		return map.replySelectList(vo);
	}
	@Override
	public int replyDelete(ReplyVO vo) {
		// TODO Auto-generated method stub
		return map.replyDelete(vo);
	}

}

package com.micol.prj.prodreply.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.micol.prj.common.DataSource;

import com.micol.prj.prodreply.service.ProdReplyMapper;
import com.micol.prj.prodreply.service.ProdReplyService;
import com.micol.prj.prodreply.vo.ProdReplyVO;

public class ProdReplyServiceImpl implements ProdReplyService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true); // auto commit
	private ProdReplyMapper map = sqlSession.getMapper(ProdReplyMapper.class);
	@Override
	public int prodReplyInsert(ProdReplyVO vo) {
		// TODO Auto-generated method stub
		return map.prodReplyInsert(vo);
	}

	@Override
	public List<ProdReplyVO> prodReplySelectList(ProdReplyVO vo) {
		// TODO Auto-generated method stub
		return map.prodReplySelectList(vo);
	}

	@Override
	public int prodReplyDelete(ProdReplyVO vo) {
		// TODO Auto-generated method stub
		return map.prodReplyDelete(vo);
	}

}

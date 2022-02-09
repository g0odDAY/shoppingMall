package com.micol.prj.prod.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.micol.prj.common.DataSource;

import com.micol.prj.prod.service.ProdMapper;
import com.micol.prj.prod.service.ProdService;
import com.micol.prj.prod.vo.ProdVO;

public class ProdServiceImpl implements ProdService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true); // auto commit
	private ProdMapper map = sqlSession.getMapper(ProdMapper.class);
	@Override
	public int insertProd(ProdVO vo) {
		// TODO Auto-generated method stub
		return map.insertProd(vo);
	}

	@Override
	public List<ProdVO> prodList() {
		System.out.println("prodListService : " + map.prodList());
		return map.prodList();
	}

}

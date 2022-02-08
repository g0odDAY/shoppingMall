package com.micol.prj.qa.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.micol.prj.common.DataSource;

import com.micol.prj.qa.service.QaMapper;
import com.micol.prj.qa.service.QaService;
import com.micol.prj.qa.vo.QaVO;

public class QaServiceImpl implements QaService{
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private QaMapper map=sqlSession.getMapper(QaMapper.class);
	@Override
	public List<QaVO> qaSelectList() {
		// TODO Auto-generated method stub
		return map.qaSelectList();
	}

	@Override
	public QaVO qaSelect(QaVO vo) {
		// TODO Auto-generated method stub
		return map.qaSelect(vo);
	}

	@Override
	public int qaInsert(QaVO vo) {
		// TODO Auto-generated method stub
		return map.qaInsert(vo);
	}

	@Override
	public int qaDelete(QaVO vo) {
		// TODO Auto-generated method stub
		return map.qaDelete(vo);
	}

	@Override
	public int qaUpdate(QaVO vo) {
		// TODO Auto-generated method stub
		return map.qaUpdate(vo);
	}

}

package com.micol.prj.notice.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.micol.prj.common.DataSource;
import com.micol.prj.notice.service.NoticeMapper;
import com.micol.prj.notice.service.NoticeService;
import com.micol.prj.notice.vo.NoticeVO;

public class NoticeServiceImpl implements NoticeService{
	
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private NoticeMapper map = sqlSession.getMapper(NoticeMapper.class);
	
	@Override
	public List<NoticeVO> noticeSelectList() {
		return map.noticeSelectList();
	}

	@Override
	public NoticeVO noticeSelect(NoticeVO vo) {
		return map.noticeSelect(vo);
	}

	@Override
	public int noticeInsert(NoticeVO vo) {
		return map.noticeInsert(vo);
	}

	@Override
	public int noticeDelete(NoticeVO vo) {
		return map.noticeDelete(vo);
	}

	@Override
	public int noticeUpdate(NoticeVO vo) {
		return map.noticeUpdate(vo);
	}

	@Override
	public void noticeHitUp(int id) {
		map.noticeHitUp(id);
	}

	@Override
	public List<NoticeVO> noticeSearch(String Key, String str) {
		return map.noticeSearch(Key, str);
	}

}

package com.micol.prj.notice.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.micol.prj.notice.vo.NoticeVO;

public interface NoticeMapper {

	List<NoticeVO> noticeSelectList();

	NoticeVO noticeSelect(NoticeVO vo);

	int noticeInsert(NoticeVO vo);

	int noticeDelete(NoticeVO vo);

	int noticeUpdate(NoticeVO vo);
	
	void noticeHitUp(int id);
	
	List<NoticeVO> noticeSearch(@Param("key") String Key, @Param("str") String str);
}

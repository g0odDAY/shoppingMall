package com.micol.prj.notice.service;

import java.util.List;

import com.micol.prj.notice.vo.NoticeVO;

public interface NoticeService {
	
	List<NoticeVO> noticeSelectList();
	
	NoticeVO noticeSelect(NoticeVO vo);
	
	int noticeInsert(NoticeVO vo);
	
	int noticeDelete(NoticeVO vo);
	
	int noticeUpdate(NoticeVO vo);
	
	void noticeHitUp(int id);
	
	List<NoticeVO> noticeSearch(String Key, String str);
	
}

package com.micol.prj.notice.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NoticeVO {

	private int noticeId;
	private String noticeWriter;
	private String noticeTitle;
	private String noticeSubject;
	private String noticeDate;
	private int noticeHit;
//	private String noticeImg;
	
}

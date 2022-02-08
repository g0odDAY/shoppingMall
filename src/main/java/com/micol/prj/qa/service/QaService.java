package com.micol.prj.qa.service;

import java.util.List;

import com.micol.prj.qa.vo.QaVO;

public interface QaService {
	List<QaVO> qaSelectList();
	QaVO qaSelect(QaVO vo);
	int qaInsert(QaVO vo);
	int qaDelete(QaVO vo);
	int qaUpdate(QaVO vo);
}

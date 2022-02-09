package com.micol.prj.prod.service;

import java.util.List;

import com.micol.prj.prod.vo.ProdVO;

public interface ProdService {
	int insertProd(ProdVO vo);
	List<ProdVO> prodList();
}

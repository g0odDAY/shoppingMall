package com.micol.prj.prod.service;

import java.util.List;

import com.micol.prj.prod.vo.ProdVO;

public interface ProdMapper {
	int insertProd(ProdVO vo);
	ProdVO selectProd(ProdVO vo);
	List<ProdVO> prodList();
}

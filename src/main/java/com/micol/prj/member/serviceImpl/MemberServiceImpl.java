package com.micol.prj.member.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.micol.prj.common.DataSource;
import com.micol.prj.member.service.MemberMapper;
import com.micol.prj.member.service.MemberService;
import com.micol.prj.member.vo.MemberVO;

public class MemberServiceImpl implements MemberService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true); // auto commit
	private MemberMapper map = sqlSession.getMapper(MemberMapper.class);
	
	@Override
	public List<MemberVO> memberSelectList() {
		return map.memberSelectList();
	}
	
	@Override
	public MemberVO memberSelect(MemberVO vo) {
		return map.memberSelect(vo);
	}
	
	@Override
	public int memberInsert(MemberVO vo) {
		return map.memberInsert(vo);
	}
	
	@Override
	public int memberUpdate(MemberVO vo) {
		return map.memberUpdate(vo);
	}
	
	@Override
	public int memberDelete(MemberVO vo) {
		return map.memberDelete(vo);
	}
	
	@Override
	public boolean isIdCheck(String id) {
		return map.isIdCheck(id);
	}
}

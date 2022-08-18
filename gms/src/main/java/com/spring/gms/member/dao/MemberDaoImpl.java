package com.spring.gms.member.dao;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.gms.member.dto.MemberDto;

@Repository
public class MemberDaoImpl implements MemberDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public MemberDto selectLogin(MemberDto memberDto) throws Exception {
		return sqlSession.selectOne("member.selectLogin", memberDto);
	}

	@Override
	public void insertMember(MemberDto memberDto) throws Exception {
		sqlSession.insert("member.insertMember", memberDto);
	}

	@Override
	public String selectDuplicatedId(String memberId) throws Exception {
		return sqlSession.selectOne("member.selectDuplicatedId", memberId);
	}

	@Override
	public int selectMyOrderCnt(String memberId) throws Exception {
		return 0;
	}

	@Override
	public int selectMyCartCnt(String memberId) throws Exception {
		return 0;
	}

}
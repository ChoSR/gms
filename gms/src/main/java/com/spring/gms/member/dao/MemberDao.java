package com.spring.gms.member.dao;

import com.spring.gms.member.dto.MemberDto;

public interface MemberDao {
	
	public MemberDto selectLogin(MemberDto memberDto) throws Exception;
	public void insertMember(MemberDto memberDto) throws Exception;
	public String selectDuplicatedId(String memberId) throws Exception;

}

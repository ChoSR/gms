package com.spring.gms.member.service;

import com.spring.gms.member.dto.MemberDto;

public interface MemberService {
	
	public boolean login(MemberDto memberDto) throws Exception;
	public void addMember(MemberDto memberDto) throws Exception;
	public String checkDuplicatedId(String memberId) throws Exception;
	
}

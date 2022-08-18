package com.spring.gms.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.spring.gms.member.dao.MemberDao;
import com.spring.gms.member.dto.MemberDto;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Override
	public boolean login(MemberDto memberDto) throws Exception {
		
		MemberDto checkExsistId = memberDao.selectLogin(memberDto);
		if (checkExsistId != null) {
			if (bCryptPasswordEncoder.matches(memberDto.getPasswd(), checkExsistId.getPasswd())) {
				return true;
			}
		}
		return false;
	}

	@Override
	public void addMember(MemberDto memberDto) throws Exception {
		memberDao.insertMember(memberDto);
	}

	@Override
	public String checkDuplicatedId(String memberId) throws Exception {
		if (memberDao.selectDuplicatedId(memberId) == null) return "duplicate";
		else												return "notDuplicate";
	}

	@Override
	public int getMyOrderCnt(String memberId) throws Exception {
		return 0;
	}

	@Override
	public int getMyCartCnt(String memberId) throws Exception {
		return 0;
	}

}

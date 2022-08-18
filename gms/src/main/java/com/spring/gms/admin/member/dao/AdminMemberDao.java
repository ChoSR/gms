package com.spring.gms.admin.member.dao;

import java.util.List;
import java.util.Map;

import com.spring.gms.admin.member.dto.AdminDto;
import com.spring.gms.member.dto.MemberDto;

public interface AdminMemberDao {
	
	public AdminDto selectAdminLogin(AdminDto adminDto) throws Exception;
	public List<MemberDto> selectListMember() throws Exception;
	public void modifyMemberInfo(Map<String, String> memberMap) throws Exception;
	

}

package com.spring.gms.myPage.dao;

import java.util.List;
import java.util.Map;

import com.spring.gms.member.dto.MemberDto;

public interface MyPageDao {
	
	public List<Map<String, Object>> selectListMyOrder (String memberId) throws Exception;
	public Map<String, Object> selectOneMyOrder(Map<String, Object> orderDetailMap) throws Exception;
	public MemberDto selectOneMyInfo(String memberId) throws Exception;
	public void updateMyInfo(MemberDto memberDto) throws Exception;
	public void deleteMember(String memberId) throws Exception;
	public void updateOrderGoodsQty(Map<String, Object> updateMap) throws Exception;
}

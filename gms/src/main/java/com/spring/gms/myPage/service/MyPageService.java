package com.spring.gms.myPage.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.spring.gms.member.dto.MemberDto;

@Repository
public interface MyPageService {

	public List<Map<String,Object>> getMyOrderList(String memberId) throws Exception;
	public Map<String,Object> getMyOrderDetail(Map<String,Object> orderDetailMap) throws Exception;
	public MemberDto getMyInfo(String memberId) throws Exception;
	public void modifyMyInfo(MemberDto memberDto) throws Exception;
	public void removeMember(String memberId) throws Exception;
	public void modifyOrderGoodsQty(Map<String, Object> updateMap) throws Exception;
	
}

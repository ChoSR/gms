package com.spring.gms.myPage.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.gms.member.dto.MemberDto;
import com.spring.gms.myPage.dao.MyPageDao;

@Repository
public class MyPageServiceImpl implements MyPageService {
	
	@Autowired
	private MyPageDao myPageDao;
	
	@Override
	public List<Map<String,Object>> getMyOrderList(String memberId) throws Exception {
		return myPageDao.selectListMyOrder(memberId);
	}

	@Override
	public Map<String,Object> getMyOrderDetail(Map<String,Object> orderDetailMap) throws Exception {
		return myPageDao.selectOneMyOrder(orderDetailMap);
	}

	@Override
	public MemberDto getMyInfo(String memberId) throws Exception {
		return myPageDao.selectOneMyInfo(memberId);
	}

	@Override
	public void modifyMyInfo(MemberDto memberDto) throws Exception {
		myPageDao.updateMyInfo(memberDto);

	}

	@Override
	public void removeMember(String memberId) throws Exception {
		myPageDao.deleteMember(memberId);
	}

	@Override
	public void modifyOrderGoodsQty(Map<String, Object> updateMap) throws Exception {
		myPageDao.updateOrderGoodsQty(updateMap);
	}
	
}

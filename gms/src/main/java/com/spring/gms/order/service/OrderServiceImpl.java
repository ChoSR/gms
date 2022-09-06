package com.spring.gms.order.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.gms.goods.dto.GoodsDto;
import com.spring.gms.member.dto.MemberDto;
import com.spring.gms.order.dao.OrderDao;
import com.spring.gms.order.dto.OrderDto;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	private OrderDao orderDao;

	@Override
	public void addOrder(OrderDto orderDto) throws Exception {
		
		Map<String, Object> orderMap = new HashMap<String, Object>();
		orderMap.put("goodsCd", orderDto.getGoodsCd());
		orderMap.put("memberId", orderDto.getMemberId());
		
		orderDao.insertOrder(orderDto);
	}

	@Override
	public MemberDto getOrdererDetail(String memberId) throws Exception {
		return orderDao.selectOneOrderer(memberId);
	}
	
	@Override
	public GoodsDto getGoodsDetail(int goodsCd) throws Exception {
		return orderDao.selectOneOrderGoods(goodsCd);
	}

	@Override
	public void removeOrder(int orderCd) throws Exception {
		orderDao.deleteOrder(orderCd);
	}

}

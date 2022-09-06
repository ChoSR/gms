package com.spring.gms.order.service;

import com.spring.gms.goods.dto.GoodsDto;
import com.spring.gms.member.dto.MemberDto;
import com.spring.gms.order.dto.OrderDto;

public interface OrderService {

	public void addOrder(OrderDto orderDto) throws Exception;
	public MemberDto getOrdererDetail(String memberId) throws Exception;
	public GoodsDto getGoodsDetail(int goodsCd) throws Exception;
	public void removeOrder(int orderCd) throws Exception;
}

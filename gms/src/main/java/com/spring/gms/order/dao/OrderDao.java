package com.spring.gms.order.dao;

import com.spring.gms.goods.dto.GoodsDto;
import com.spring.gms.member.dto.MemberDto;
import com.spring.gms.order.dto.OrderDto;

public interface OrderDao {
	
	public void insertOrder(OrderDto orderDto) throws Exception;
	public MemberDto selectOneOrderer(String memberId) throws Exception;
	public GoodsDto selectOneOrderGoods(int goodsCd) throws Exception;
	public void deleteOrder(int orderCd) throws Exception;
	
}

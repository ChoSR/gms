package com.spring.gms.order.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.gms.goods.dto.GoodsDto;
import com.spring.gms.member.dto.MemberDto;
import com.spring.gms.order.dto.OrderDto;

@Repository
public class OrderDaoImpl implements OrderDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insertOrder(OrderDto orderDto) throws Exception {
		sqlSession.insert("order.insertOrder", orderDto);
	}

	@Override
	public MemberDto selectOneOrderer(String memberId) throws Exception {
		return sqlSession.selectOne("order.selectOneOrderer", memberId);
	}
	
	@Override
	public GoodsDto selectOneOrderGoods(int goodsCd) throws Exception {
		return sqlSession.selectOne("order.selectOneOrderGoods", goodsCd);
	}

	@Override
	public void deleteOrder(int orderCd) throws Exception {
		sqlSession.delete("order.deleteOrder", orderCd);
	}
}

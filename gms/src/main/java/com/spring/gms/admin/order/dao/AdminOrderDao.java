package com.spring.gms.admin.order.dao;

import java.util.List;
import java.util.Map;

public interface AdminOrderDao {
	
	public List<Map<String, Object>> selectListOrder() throws Exception;
	
}

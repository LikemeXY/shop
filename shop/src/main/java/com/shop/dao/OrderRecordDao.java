package com.shop.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shop.entity.OrderRecord;

public interface OrderRecordDao {

	public int saveOrderRecord(OrderRecord orderRecord);
	
	public List<OrderRecord> queryOrderRecordList();
	
	public List<OrderRecord> queryOrderRecordCount(@Param(value = "start") int start, @Param(value = "count") int count);
	
	public List<OrderRecord> queryOrderRecord(String orderNo);
	
	public int updateOrderRecord(OrderRecord orderRecord);
}

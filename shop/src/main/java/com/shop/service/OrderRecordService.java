package com.shop.service;

import java.util.List;

import com.shop.entity.OrderRecord;

public interface OrderRecordService {

	public boolean saveOrderRecord(OrderRecord orderRecord);
	
	public List<OrderRecord> queryOrderRecordList();
	
	public List<OrderRecord> queryOrderRecordCount(int start, int count);
	
	public List<OrderRecord> queryOrderRecord(String orderNo);
	
	public int updateOrderRecord(OrderRecord orderRecord);
}

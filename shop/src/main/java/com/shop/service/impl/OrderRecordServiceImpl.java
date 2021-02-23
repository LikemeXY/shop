package com.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.OrderRecordDao;
import com.shop.entity.OrderRecord;
import com.shop.service.OrderRecordService;
import com.shop.utils.SqlUtils;

@Service
public class OrderRecordServiceImpl implements OrderRecordService{

	@Autowired
	private OrderRecordDao orderRecordDao;
	
	@Override
	public boolean saveOrderRecord(OrderRecord orderRecord) {
		return SqlUtils.isOneSuccess(orderRecordDao.saveOrderRecord(orderRecord));
	}

	@Override
	public List<OrderRecord> queryOrderRecordList() {
		return orderRecordDao.queryOrderRecordList();
	}
	
	@Override
	public List<OrderRecord> queryOrderRecordCount(int page, int count){
		int start = (page - 1) * count;
		return orderRecordDao.queryOrderRecordCount(start, count);
	}
	
	@Override
	public List<OrderRecord> queryOrderRecord(String orderNo) {
		return orderRecordDao.queryOrderRecord(orderNo);
	}

	@Override
	public int updateOrderRecord(OrderRecord orderRecord) {
		return orderRecordDao.updateOrderRecord(orderRecord);
	}

}

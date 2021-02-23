package com.shop.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.entity.OrderRecord;
import com.shop.service.OrderRecordService;

@Controller
@RequestMapping("/orderRecord")
public class OrderRecordController {

	@Autowired
	private OrderRecordService orderRecordService;
	
	@RequestMapping("/orderRecordList")
	@ResponseBody
	public Map<String,Object> orderRecordList(@RequestParam(value="page") int page,@RequestParam(value="limit") int limit){
		List<OrderRecord> orderRecord = orderRecordService.queryOrderRecordCount(page, limit);
		List<OrderRecord> orderRecords = orderRecordService.queryOrderRecordList();
		Map<String,Object> tableData =new HashMap<String,Object>();
        //这是layui要求返回的json数据格式
        tableData.put("code", 0);
        tableData.put("msg", "");
        //将全部数据的条数作为count传给前台（一共多少条）
        tableData.put("count", orderRecords.size());
        //将分页后的数据返回（每页要显示的数据）
        tableData.put("data", orderRecord);
        //返回给前端
        return tableData;
	}
	
	@RequestMapping("/findOrderStatus")
	@ResponseBody
	public String findOrderStatus(@RequestParam(value="orderNo") String orderNo) {
		List<OrderRecord> orderRecords = orderRecordService.queryOrderRecord(orderNo);
		OrderRecord orderRecord = orderRecords.get(0);
		if(orderRecord.getStatus()==1) {
			return "success";
		}
		return "error";
	}
}

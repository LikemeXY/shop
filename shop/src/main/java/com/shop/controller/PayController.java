package com.shop.controller;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.math.BigDecimal;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.time.DateFormatUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.shop.entity.Cart;
import com.shop.entity.OrderRecord;
import com.shop.entity.UserInfo;
import com.shop.service.OrderRecordService;
import com.shop.utils.MyUtils;

@Controller
@RequestMapping("/pay")
public class PayController {

	@Autowired
	private OrderRecordService orderRecordService;
	
	private String customerid = "20087359";
	private String apikey = "4d9bd1e1629c3756f44e7270173414cc6e8ef41b";
	private String url = "https://www.rjypay.com/checkout";
	private String notifyurl = "http://198.13.52.49:8080/shop/pay/notifyPayResult";
	private String returnurl = "http://198.13.52.49:8080/shop/pay/goPaySuccPage";

	String doPost(String url, String params) throws Exception {
		HttpURLConnection conn = (HttpURLConnection) new URL(url)
				.openConnection();
		conn.setRequestMethod("POST");
		conn.setDoOutput(true);
		conn.setDoInput(true);
// int timeout = 300000;
// conn.setConnectTimeout(timeout);
// conn.setReadTimeout(timeout);
// conn.setRequestProperty("Content-type",
// "application/x-www-form-urlencoded");
// conn.setRequestProperty("Connection", "Close");
// conn.setRequestProperty("Content-length",
// String.valueOf(params.length()));
// conn.connect();
		if(params!=null){
			OutputStreamWriter out = new OutputStreamWriter(conn.getOutputStream(),
					"UTF-8");
			out.write(params);
			out.flush();
			out.close();
		}

		InputStream in=conn.getInputStream();
		byte[] buffer = new byte[1024];
		int len = 0;
		while ((len = in.read(buffer)) > 0) {
			System.out.println(new String(buffer, 0, len));
		}
		return "";
	}

		@RequestMapping("/payOneNow")
	public void payOneNow(OrderRecord orderRecord, HttpServletRequest request, HttpServletResponse response)  throws Exception{
		BigDecimal number = new BigDecimal(orderRecord.getNumber());
		orderRecord.setTotalPrice(orderRecord.getPrice().multiply(number));

		String total_fee = orderRecord.getTotalPrice().toString();
		String sdorderno = MyUtils.getBillCode();
		String params = "version=1.0&customerid="+customerid+"&total_fee="+total_fee+"&sdorderno="+sdorderno+"&notifyurl="+notifyurl+"&returnurl="+returnurl+"&"+apikey;
		System.out.println(params);
		String md5Sign = DigestUtils.md5DigestAsHex(params.getBytes());
		System.out.println(md5Sign);
		
		orderRecord.setOrderNo(sdorderno);
		orderRecord.setStatus(0);
		orderRecord.setTime(DateFormatUtils.format(new Date(), "yyyy-MM-dd HH:mm:ss"));
		System.out.println(orderRecord);
		orderRecordService.saveOrderRecord(orderRecord);//生成订单存入数据库
		
		String param = "version=1.0&customerid="+customerid+"&sdorderno="+sdorderno+"&total_fee="+total_fee+"&notifyurl="+notifyurl+"&returnurl="+returnurl+"&remark="+orderRecord.getMessage()+"&sign="+md5Sign;
		url="http://127.0.0.2/pay";
		String urls=url+"?"+param;
		System.out.println(urls);
		//ToDo 发送urls请求 把结果 解析后 提取部分内容之后  在重定向给客户端
		//	doPost(url,param);
		//	response.sendRedirect("https://www.baidu.com");

			response.sendRedirect(urls);
	}
	
	@RequestMapping("/toPay")
	public String toPay() throws Exception{
		return "pay";
	}
	
	@RequestMapping("/payOnCart")
	@ResponseBody
	public String payOnCart(@RequestParam("payList")String payList, @RequestParam("userInfo")String userInfo, 
			HttpServletRequest request, HttpServletResponse response) throws Exception{
	    //jackson对象
	    ObjectMapper mapper = new ObjectMapper();
	    JavaType p_jt = mapper.getTypeFactory().constructParametricType(ArrayList.class, Cart.class);
	    JavaType u_jt = mapper.getTypeFactory().constructParametricType(ArrayList.class, UserInfo.class);
	    @SuppressWarnings("unchecked")
		List<Cart> pList = (List<Cart>)mapper.readValue(payList, p_jt);
	    @SuppressWarnings("unchecked")
		List<UserInfo> uList = (List<UserInfo>)mapper.readValue(userInfo, u_jt);
	    UserInfo userInfo1 = uList.get(0);
		String sdorderno = MyUtils.getBillCode();
		BigDecimal total_feeDec = new BigDecimal("0");
		for(Cart cart : pList) {
			System.out.println(cart);
			OrderRecord orderRecord = new OrderRecord();
			orderRecord.setOrderNo(sdorderno);
			orderRecord.setpId(cart.getpId());
			orderRecord.setpName(cart.getpName());
			orderRecord.setSize(cart.getSize());
			orderRecord.setColor(cart.getColor());
			BigDecimal number = new BigDecimal(cart.getNumber());
			@SuppressWarnings("deprecation")
			BigDecimal priceDec = cart.getPrice().divide(number,2,BigDecimal.ROUND_CEILING);
			total_feeDec = total_feeDec.add(cart.getPrice());
			orderRecord.setPrice(priceDec);
			orderRecord.setTotalPrice(cart.getPrice());
			orderRecord.setNumber(cart.getNumber());
			orderRecord.setName(userInfo1.getName());
			orderRecord.setPhone(userInfo1.getPhone());
			orderRecord.setLocation(userInfo1.getLocation());
			orderRecord.setAddress(userInfo1.getAddress());
			orderRecord.setMessage(userInfo1.getMessage());
			orderRecord.setPayMethod("1");
			orderRecord.setStatus(0);
			orderRecord.setTime(DateFormatUtils.format(new Date(), "yyyy-MM-dd HH:mm:ss"));
			System.out.println(orderRecord);
			orderRecordService.saveOrderRecord(orderRecord);//生成订单存入数据库
		}
		
		String total_fee = total_feeDec.toString();
		String params = "version=1.0&customerid="+customerid+"&total_fee="+total_fee+"&sdorderno="+sdorderno+"&notifyurl="+notifyurl+"&returnurl="+returnurl+"&"+apikey;
		System.out.println(params);
		String md5Sign = DigestUtils.md5DigestAsHex(params.getBytes());
		System.out.println(md5Sign);
		
		String param = "version=1.0&customerid="+customerid+"&sdorderno="+sdorderno+"&total_fee="+total_fee+"&notifyurl="+notifyurl+"&returnurl="+returnurl+"&remark="+userInfo1.getMessage()+"&sign="+md5Sign;
		String urls=url+"?"+param;
		System.out.println(urls);
		return urls;
	}
    
    @SuppressWarnings({ "unchecked", "rawtypes" })
	@ResponseBody
    @RequestMapping(value="/notifyPayResult",method = RequestMethod.POST)
    public String notifyPayResult(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	Map<String, String[]> requestParams = request.getParameterMap();

        Map<String, String> params = new HashMap();
        for (String name : requestParams.keySet()) {
            String[] values = requestParams.get(name);
            String valueStr = "";
            for (int i = 0; i < values.length; i++) {
                valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";
            }
            params.put(name, valueStr);
        }
        System.out.println("notifyPayResult--params"+params);
        
        String status = params.get("status");
        String customerid = params.get("customerid");
        String sdpayno = params.get("sdpayno");
        String sdorderno = params.get("sdorderno");
        String total_fee = params.get("total_fee");
        String paytype = params.get("paytype");
        String sign = params.get("sign");
        
        String signVerify = "customerid="+customerid+"&status="+status+"&sdpayno="+sdpayno+"&sdorderno="+sdorderno+"&total_fee="+total_fee+"&paytype="+paytype+"&"+apikey;
		String md5Sign = DigestUtils.md5DigestAsHex(signVerify.getBytes());
		System.out.println(md5Sign);
        response.getOutputStream().print("success");
        String success="";
        if(md5Sign.equals(sign)) {
        	System.out.println("验证签名成功");
        	if(status.equals("1")) {
        		List<OrderRecord> orderRecords = orderRecordService.queryOrderRecord(sdorderno);
        		OrderRecord orderRecord = orderRecords.get(0);
        		orderRecord.setStatus(1);
        		orderRecord.setTime(DateFormatUtils.format(new Date(), "yyyy-MM-dd HH:mm:ss"));
        		System.out.println("存入数据库："+orderRecord);
        		orderRecordService.updateOrderRecord(orderRecord);
        		return success;
        	}else {
        		return "failure";
        	}
        }else {
        	System.out.println("验证签名失败");
            return "failure";
        }

    }
    
    @SuppressWarnings({ "unchecked", "rawtypes" })
    @RequestMapping(value="/goPaySuccPage",method = RequestMethod.GET)
    public String goPaySuccPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	Map<String, String[]> requestParams = request.getParameterMap();

        Map<String, String> params = new HashMap();
        for (String name : requestParams.keySet()) {
            String[] values = requestParams.get(name);
            String valueStr = "";
            for (int i = 0; i < values.length; i++) {
                valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";
            }
            params.put(name, valueStr);
        }
        System.out.println("goPaySuccPage--params"+params);
        return "pay-success";
    }
    
}

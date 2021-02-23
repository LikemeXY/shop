package com.shop.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

public class MyUtils {

	public static String getBillCode() {
        Random rd = new Random();
        String n = "";
        int rdGet;
        do {
            if (rd.nextInt() % 2 == 1) {
            	rdGet = Math.abs(rd.nextInt()) % 10 + 48;  // 产生48到57的随机数(0-9的键位值)
	        }else{
	            rdGet = Math.abs(rd.nextInt()) % 26 + 97;  // 产生97到122的随机数(a-z的键位值)
	        }
	        char num1 = (char) rdGet;                      //int转换char
	        String dd = Character.toString(num1);
	        n += dd;
        } while (n.length() < 3);// 设定长度，此处假定长度小于3
		String r1= (((Math.random()*9+1)*100000)+"").substring(0, 3);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String SNDate = sdf.format(new Date());
		String orderCode = SNDate + n.toUpperCase() + r1;
        return orderCode;
	}
}

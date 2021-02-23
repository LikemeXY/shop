package com.shop.utils;

public class SqlUtils {

	/**
	 * 是否成功插入删除修改一条数据
	 * @param result
	 * @return
	 */
	public static boolean isOneSuccess(int result) {
    	if(result == 1) {
    		return true;
    	}else {
    		return false;
    	}
	}
	
	/**
	 * 是否成功插入删除修改多条数据
	 * @param result
	 * @return
	 */
	public static boolean isMoreSuccess(int result) {
    	if(result > 1) {
    		return true;
    	}else {
    		return false;
    	}
	}
}

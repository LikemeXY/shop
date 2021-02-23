package com.shop.dao;

import org.apache.ibatis.annotations.Param;

import com.shop.entity.Admin;

public interface AdminDao {

	public Admin getByUsername(String username);
	
	public Admin login(@Param("username") String username, @Param("password") String password);
	
	public int updateUsername(@Param("username") String username);
	
	public int updatePassword(@Param("username") String username, @Param("password") String password);
}

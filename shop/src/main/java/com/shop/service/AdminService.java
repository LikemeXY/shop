package com.shop.service;

import com.shop.entity.Admin;

public interface AdminService {
	
	public Admin login(String username, String password);
	
	public boolean updateUsername(String username);
	
	public boolean updatePassword(String username, String password);
}

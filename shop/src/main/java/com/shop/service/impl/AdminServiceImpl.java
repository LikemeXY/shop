package com.shop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import com.shop.dao.AdminDao;
import com.shop.entity.Admin;
import com.shop.service.AdminService;
import com.shop.utils.SqlUtils;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDao adminDao;
	
	@Override
	public Admin login(String username, String password) {
		Admin admin = adminDao.getByUsername(username);
		if(admin != null) {
			String md5Password = DigestUtils.md5DigestAsHex(password.getBytes());
            // 判断加密后的密码和数据库中存放的密码是否匹配，匹配则表示允许登录
            if (md5Password.equals(admin.getPassword())) {
                return admin;
            }
		}
		return null;
	}

	@Override
	public boolean updateUsername(String username) {
		return SqlUtils.isOneSuccess(adminDao.updateUsername(username));
	}

	@Override
	public boolean updatePassword(String username, String password) {
		String md5Password = DigestUtils.md5DigestAsHex(password.getBytes());
		return SqlUtils.isOneSuccess(adminDao.updatePassword(username, md5Password));
	}

}

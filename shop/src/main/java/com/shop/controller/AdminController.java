package com.shop.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.entity.Admin;
import com.shop.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;
	
	@RequestMapping("/admin")
	public String admin() {
		return "login";
	}
	
    @RequestMapping(value = {"", "login"}, method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	
    @RequestMapping(value = "/adminLogin", method = RequestMethod.POST)
    public String adminLogin(@RequestParam(required = true) String username, @RequestParam(required = true) String password, HttpServletRequest httpServletRequest, Model model) {
    	Admin admin = adminService.login(username, password);
        // 登录失败
        if (admin == null) {
            model.addAttribute("message", "用户名或密码错误，请重新输入");
            return login();
        }
        // 登录成功
        else {
        	httpServletRequest.getSession().setAttribute("admin", admin);
            return "redirect:/adminMain";
        }
    }
    
    @RequestMapping(value = "adminMain")
    public String main() {
        return "admin";
    }
    
    @RequestMapping(value = "changePassword", method = RequestMethod.POST)
    @ResponseBody
    public String changePassword(@RequestParam(required = true) String username, @RequestParam(required = true) String password, HttpServletRequest httpServletRequest, Model model) {
    	if(adminService.updatePassword(username, password)) {
    		return "success";
    	}
    	return "error";
    }    
    
    @RequestMapping(value = "logout", method = RequestMethod.GET)
    public String logout(HttpServletRequest httpServletRequest) {
        httpServletRequest.getSession().invalidate();
        return login();
    }


}

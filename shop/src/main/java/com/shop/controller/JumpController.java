package com.shop.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.shop.service.ProductService;

@Controller
public class JumpController {

	@RequestMapping(value="/")
	public ModelAndView index(HttpServletRequest request, HttpServletResponse response){
		return new ModelAndView("redirect:product/all");
	}
	
	@RequestMapping("/shopChat")
	public String shopChat() {
		return "gouwuche";
	}
	
	@RequestMapping(value="/goPaySuccPage",method = RequestMethod.GET)
	public String goPaySuccPage() {
		return "pay-success";
	}
	
	@RequestMapping("/goPayLostPage")
	public String goPayLostPage() {
		return "pay-lost";
	}
}

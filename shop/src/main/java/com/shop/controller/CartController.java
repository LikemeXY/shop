package com.shop.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.entity.Cart;
import com.shop.entity.Product;
import com.shop.service.ProductService;
import com.shop.utils.CookieUtils;
import com.shop.utils.JsonUtils;

@Controller
@RequestMapping("/cart")
public class CartController {
	
	@Autowired
	private ProductService productService;
    
    @RequestMapping("/add")
    @ResponseBody
    public String addCartItem(int pId, int num, String size, String color,
            HttpServletRequest request, HttpServletResponse response) {
    	System.out.println(pId+" "+num+" "+size+" "+color);
    	BigDecimal BDnum = new BigDecimal(num);
        // 1、从cookie中查询商品列表。
        List<Cart> cartList = getCartList(request);
        // 2、判断商品在商品列表中是否存在。
        boolean hasItem = false;
        for (Cart cart : cartList) {
            //对象比较的是地址，应该是值的比较
            if (cart.getpId() == pId&&cart.getSize().equals(size)&&cart.getColor().equals(color)) {
                // 3、如果存在，商品数量相加。
            	cart.setNumber(cart.getNumber() + num);
            	cart.setPrice(cart.getPrice().add(cart.getdPrice().multiply(BDnum)));
                hasItem = true;
                break;
            }
        }
        if (!hasItem) {
            // 4、不存在，根据商品id查询商品信息。
            Product product = productService.queryProductById(pId);
            Cart cart = new Cart();
            cart.setpId(pId);
            cart.setpName(product.getpName());
            cart.setNumber(num);
            cart.setColor(color);
            cart.setSize(size);
            cart.setdPrice(product.getPrice());
            cart.setPrice(product.getPrice().multiply(BDnum));
            cart.setImgIndex(product.getImgIndex());
			if(StringUtils.isNotBlank(cart.getColor())&&StringUtils.isNotBlank(cart.getSize())) {
				cart.setStatus(1);
			}else if(StringUtils.isBlank(cart.getColor())&&StringUtils.isNotBlank(cart.getSize())){
				cart.setStatus(2);
			}else if(StringUtils.isNotBlank(cart.getColor())&&StringUtils.isBlank(cart.getSize())) {
				cart.setStatus(3);
			}else {
				cart.setStatus(4);
			}
            System.out.println(cart);
            // 5、把商品添加到购车列表。
            cartList.add(cart);
        }
        // 6、把购车商品列表写入cookie。
        CookieUtils.setCookie(request, response, "car", JsonUtils.objectToJson(cartList), 604800, true);
        return "success";
    }
    
    @RequestMapping("/cartList")
    public String showCartList(HttpServletRequest request, Model model) {
    	String json = CookieUtils.getCookieValue(request, "car", true);
    	if (StringUtils.isNotBlank(json)) { 
    		List<Cart> list = JsonUtils.jsonToList(json, Cart.class);
    		if(!list.isEmpty()) {
    	        //取购物车商品列表
    	        List<Cart> cartList = getCartList(request);
    	        //传递给页面
    	        model.addAttribute("cartList", cartList);
    	        return "shopCart";
    		}
    	}
    	return "gouwuche";

    }
    
    @RequestMapping("/payList")
    public String showPayList(HttpServletRequest request, Model model) {
    	String json = CookieUtils.getCookieValue(request, "car", true);
    	if (StringUtils.isNotBlank(json)) { 
    		List<Cart> list = JsonUtils.jsonToList(json, Cart.class);
    		if(!list.isEmpty()) {
    	        //取购物车商品列表
    	        List<Cart> payList = getCartList(request);
    	        //传递给页面
    	        model.addAttribute("payList", payList);
    	        return "pay";
    		}
    	}
    	return "gouwuche";

    }
    
    /*修改购物车商品数量*/
    @RequestMapping("/update")
    @ResponseBody
    public String updateNum(int pId, int num, String size, String color,
    		HttpServletRequest request,HttpServletResponse response){
        //从cookie中查询商品列表。
    	BigDecimal BDnum = new BigDecimal(num);
        List<Cart> cartList = getCartList(request);
        for (Cart cart : cartList) {
            if(cart.getpId() == pId&&cart.getSize().equals(size)&&cart.getColor().equals(color)){
            	cart.setNumber(num);
            	cart.setPrice(cart.getdPrice().multiply(BDnum));
            }
        }
        CookieUtils.setCookie(request, response, "car", JsonUtils.objectToJson(cartList), 604800, true);
        return "success";
    }
    
    @RequestMapping("/delete")
    @ResponseBody
    public String deleteCarItem(int pId, int num, String size, String color,
    		HttpServletRequest request,HttpServletResponse response){
        //从cookie中查询商品列表。
        List<Cart> cartList = getCartList(request);
        for (Cart cart : cartList) {
            if(cart.getpId() == pId&&cart.getSize().equals(size)&&cart.getColor().equals(color)){
            	cartList.remove(cart);
            	break;
            }
        }
        
        CookieUtils.setCookie(request, response, "car", JsonUtils.objectToJson(cartList), 604800, true);
        return "success";
    }
    
    @RequestMapping("/isCookie")
    @ResponseBody
    public String isCookieNull(HttpServletRequest request) {
    	String json = CookieUtils.getCookieValue(request, "car", true);
    	if (StringUtils.isNotBlank(json)) { 
    		List<Cart> list = JsonUtils.jsonToList(json, Cart.class);
    		if(!list.isEmpty()) {
    			return "yes";
    		}
    	}
    	return "null";
    }
    
    /**
     * 从cookie中取购物车列表
     * <p>Title: getCartList</p>
     * <p>Description: </p>
     * @param request
     * @return
     */
    private List<Cart> getCartList(HttpServletRequest request) {
        //取购物车列表
        String json = CookieUtils.getCookieValue(request, "car", true);
        //判断json是否为null
        if (StringUtils.isNotBlank(json)) {
            //把json转换成商品列表返回
            List<Cart> list = JsonUtils.jsonToList(json, Cart.class);
            return list;
        }
        return new ArrayList<>();
    }
    
    
}

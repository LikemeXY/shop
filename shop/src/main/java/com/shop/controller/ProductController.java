package com.shop.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.shop.entity.Color;
import com.shop.entity.Images;
import com.shop.entity.Product;
import com.shop.entity.Size;
import com.shop.service.ProductService;
import com.shop.utils.JsonUtils;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	private ProductService productService;
	
	@RequestMapping("/all")
	public ModelAndView findAllProductList(HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {
		ModelAndView model = new ModelAndView();
		List<Product> product = productService.queryAllProduct();
        model.addObject("product",product);
        model.setViewName("index");
		return model;
	}
	
	@RequestMapping("/woman")
	public ModelAndView findWomanProductList(HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {
		ModelAndView model = new ModelAndView();
		List<Product> product = productService.queryProductByCategory(1);
        model.addObject("product",product);
        model.setViewName("woman");
		return model;
	}
	
	@RequestMapping("/man")
	public ModelAndView findManProductList(HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {
		ModelAndView model = new ModelAndView();
		List<Product> product = productService.queryProductByCategory(2);
        model.addObject("product",product);
        model.setViewName("man");
		return model;
	}
	
	@RequestMapping("/watch")
	public ModelAndView findWatchProductList(HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {
		ModelAndView model = new ModelAndView();
		List<Product> product = productService.queryProductByCategory(3);
        model.addObject("product",product);
        model.setViewName("watch");
		return model;
	}
	
	@RequestMapping("/lipstick")
	public ModelAndView findLipstickProductList(HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {
		ModelAndView model = new ModelAndView();
		List<Product> product = productService.queryProductByCategory(4);
        model.addObject("product",product);
        model.setViewName("lipstick");
		return model;
	}
	
	@RequestMapping("/findPageProductList")
	@ResponseBody
	public Map<String,Object> findPageProductList(int pageStart, int pageSize) {
		
		List<Product> product = productService.queryPageProduct(pageStart, pageSize);
		Map<String, Object> map = new HashMap<String, Object>();
        map.put("product", product);
		return map;
	}
	
	@RequestMapping("/productDetail")
	public ModelAndView findProductDetail(HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {
		ModelAndView model = new ModelAndView();
		int pId = Integer.parseInt(request.getParameter("pId"));
		Product product = productService.queryProductById(pId);
		int imgId = product.getImgId();
		int sizeId = product.getSizeId();
		int colorId = product.getColorId();
		List<Images> images = productService.queryImages(imgId);
		List<Size> sizes = productService.querySize(sizeId);
		List<Color> colors = productService.queryColor(colorId);
		System.out.println(product);
		if(sizeId==0) {
			model.addObject("msg_size",0);
		}
		if(colorId==0) {
			model.addObject("msg_color",0);
		}
		if(sizeId!=0&&product.getCategory()==4) {
			model.addObject("msg_tc",1);
		}
		model.addObject("images",images);
		model.addObject("sizes",sizes);
		model.addObject("colors",colors);
		model.addObject("product",product);
		model.setViewName("detail");
		return model;
	}
	
	@RequestMapping("/findImagesList")
	@ResponseBody
	public Map<String,Object> findImagesList(@RequestParam(value="imgId") int imgId) {
		
		List<Images> images = productService.queryImages(imgId);
		Map<String, Object> map = new HashMap<String, Object>();
        map.put("images", images);
		return map;
	}
	
	@RequestMapping("/findSizeList")
	@ResponseBody
	public Map<String,Object> findSizeList(@RequestParam(value="sizeId") int sizeId) {
		
		List<Size> size = productService.querySize(sizeId);
		Map<String, Object> map = new HashMap<String, Object>();
        map.put("size", size);
		return map;
	}
	
	@RequestMapping("/findColorList")
	@ResponseBody
	public Map<String,Object> findColorList(@RequestParam(value="colorId") int colorId) {
		
		List<Color> color = productService.queryColor(colorId);
		Map<String, Object> map = new HashMap<String, Object>();
        map.put("color", color);
		return map;
	}
	
}

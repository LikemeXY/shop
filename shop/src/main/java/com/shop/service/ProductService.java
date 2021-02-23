package com.shop.service;

import java.util.List;

import com.shop.entity.Color;
import com.shop.entity.Images;
import com.shop.entity.Product;
import com.shop.entity.Size;

public interface ProductService {

	public List<Product> queryAllProduct();
	
	public List<Product> queryPageProduct(int pageStart, int pageSize);
	
	public List<Product> queryProductByCategory(int category);
	
	public Product queryProductById(int pId);
	
	//==============================
	
	public List<Images> queryImages(int imgId);
	
	public List<Size> querySize(int sizeId);
	
	public List<Color> queryColor(int colorId);
}

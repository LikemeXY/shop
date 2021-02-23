package com.shop.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shop.entity.Color;
import com.shop.entity.Images;
import com.shop.entity.Product;
import com.shop.entity.Size;

public interface ProductDao {

	public List<Product> queryAllProduct();
	
	public List<Product> queryPageProduct(@Param("pageStart") int pageStart, @Param("pageSize") int pageSize);
	
	public List<Product> queryProductByCategory(int category);
	
	public Product queryProductById(int pId);
	
	//=======================
	
	public List<Images> queryImages(int imgId);
	
	public List<Size> querySize(int sizeId);
	
	public List<Color> queryColor(int colorId);
}

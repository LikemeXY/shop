package com.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.ProductDao;
import com.shop.entity.Color;
import com.shop.entity.Images;
import com.shop.entity.Product;
import com.shop.entity.Size;
import com.shop.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductDao productDao;
	
	@Override
	public List<Product> queryAllProduct() {
		return productDao.queryAllProduct();
	}
	
	@Override
	public List<Product> queryPageProduct(int pageStart, int pageSize){
		return productDao.queryPageProduct(pageStart, pageSize);
	}

	@Override
	public List<Product> queryProductByCategory(int category) {
		return productDao.queryProductByCategory(category);
	}
	
	@Override
	public Product queryProductById(int pId) {
		return productDao.queryProductById(pId);
	}

	@Override
	public List<Images> queryImages(int imgId) {
		return productDao.queryImages(imgId);
	}

	@Override
	public List<Size> querySize(int sizeId) {
		return productDao.querySize(sizeId);
	}

	@Override
	public List<Color> queryColor(int colorId) {
		return productDao.queryColor(colorId);
	}

}

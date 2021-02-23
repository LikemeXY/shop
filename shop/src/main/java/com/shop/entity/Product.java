package com.shop.entity;

import java.io.Serializable;
import java.math.BigDecimal;

public class Product implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int pId;
	private String pName;
	private String imgIndex;
	private int imgId;
	private int sizeId;
	private int colorId;
	private BigDecimal oriPrice;
	private BigDecimal price;
	private int soldNum;
	private int category;
	public int getpId() {
		return pId;
	}
	public void setpId(int pId) {
		this.pId = pId;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getImgIndex() {
		return imgIndex;
	}
	public void setImgIndex(String imgIndex) {
		this.imgIndex = imgIndex;
	}
	public int getImgId() {
		return imgId;
	}
	public void setImgId(int imgId) {
		this.imgId = imgId;
	}
	public int getSizeId() {
		return sizeId;
	}
	public void setSizeId(int sizeId) {
		this.sizeId = sizeId;
	}
	public int getColorId() {
		return colorId;
	}
	public void setColorId(int colorId) {
		this.colorId = colorId;
	}
	public BigDecimal getOriPrice() {
		return oriPrice;
	}
	public void setOriPrice(BigDecimal oriPrice) {
		this.oriPrice = oriPrice;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	public int getSoldNum() {
		return soldNum;
	}
	public void setSoldNum(int soldNum) {
		this.soldNum = soldNum;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	@Override
	public String toString() {
		return "Product [pId=" + pId + ", pName=" + pName + ", imgIndex=" + imgIndex + ", imgId=" + imgId + ", sizeId="
				+ sizeId + ", colorId=" + colorId + ", oriPrice=" + oriPrice + ", price=" + price + ", soldNum="
				+ soldNum + ", category=" + category + "]";
	}
	
	
	
}

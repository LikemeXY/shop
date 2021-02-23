package com.shop.entity;

import java.io.Serializable;
import java.math.BigDecimal;

public class Cart implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int pId;
	private String pName;
	private String size;
	private String color;
	private String imgIndex;
	private BigDecimal dPrice;
	private BigDecimal price;
	private int number;
	private int status;
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
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
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getImgIndex() {
		return imgIndex;
	}
	public void setImgIndex(String imgIndex) {
		this.imgIndex = imgIndex;
	}
	
	public BigDecimal getdPrice() {
		return dPrice;
	}
	public void setdPrice(BigDecimal dPrice) {
		this.dPrice = dPrice;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Cart [pId=" + pId + ", pName=" + pName + ", size=" + size + ", color=" + color + ", imgIndex="
				+ imgIndex + ", dPrice=" + dPrice + ", price=" + price + ", number=" + number + ", status=" + status
				+ "]";
	}


}

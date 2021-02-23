package com.shop.entity;

import java.io.Serializable;
import java.math.BigDecimal;

public class OrderRecord implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String orderNo;
	private int pId;
	private String pName;
	private String size;
	private String color;
	private BigDecimal price;
	private BigDecimal totalPrice;
	private int number;
	private String name;
	private String phone;
	private String location;
	private String address;
	private String message;
	private String payMethod;
	private String postUrl;
	private int status;
	private String time;
	public String getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getPostUrl() {
		return postUrl;
	}
	public void setPostUrl(String postUrl) {
		this.postUrl = postUrl;
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
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	public BigDecimal getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(BigDecimal totalPrice) {
		this.totalPrice = totalPrice;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getPayMethod() {
		return payMethod;
	}
	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "OrderRecord [orderNo=" + orderNo + ", pId=" + pId + ", pName=" + pName + ", size=" + size + ", color="
				+ color + ", price=" + price + ", totalPrice=" + totalPrice + ", number=" + number + ", name=" + name
				+ ", phone=" + phone + ", location=" + location + ", address=" + address + ", message=" + message
				+ ", payMethod=" + payMethod + ", postUrl=" + postUrl + ", status=" + status + ", time=" + time + "]";
	}

}

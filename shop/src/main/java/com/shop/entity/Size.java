package com.shop.entity;

import java.io.Serializable;

public class Size implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private int sizeId;
	private String sizeName;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSizeId() {
		return sizeId;
	}
	public void setSizeId(int sizeId) {
		this.sizeId = sizeId;
	}
	public String getSizeName() {
		return sizeName;
	}
	public void setSizeName(String sizeName) {
		this.sizeName = sizeName;
	}
	@Override
	public String toString() {
		return "Size [id=" + id + ", sizeId=" + sizeId + ", sizeName=" + sizeName + "]";
	}

}

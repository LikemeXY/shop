package com.shop.entity;

import java.io.Serializable;

public class Color implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private int colorId;
	private String colorName;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getColorId() {
		return colorId;
	}
	public void setColorId(int colorId) {
		this.colorId = colorId;
	}
	public String getColorName() {
		return colorName;
	}
	public void setColorName(String colorName) {
		this.colorName = colorName;
	}
	@Override
	public String toString() {
		return "Color [id=" + id + ", colorId=" + colorId + ", colorName=" + colorName + "]";
	}

}

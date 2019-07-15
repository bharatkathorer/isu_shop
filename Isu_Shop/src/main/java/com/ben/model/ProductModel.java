package com.ben.model;

import java.util.Arrays;

import javax.servlet.http.Part;

public class ProductModel {
	
	private int id;
	private Part p_pic;
	private byte img[];
	private String category,p_name,price,p_modal,discount,brand,color,warranty,more_info,rating,description,love;
	
	
	
	public String getLove() {
		return love;
	}
	public void setLove(String love) {
		this.love = love;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Part getP_pic() {
		return p_pic;
	}
	public void setP_pic(Part p_pic) {
		this.p_pic = p_pic;
	}
	public byte[] getImg() {
		return img;
	}
	public void setImg(byte[] img) {
		this.img = img;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getP_modal() {
		return p_modal;
	}
	public void setP_modal(String p_modal) {
		this.p_modal = p_modal;
	}
	public String getDiscount() {
		return discount;
	}
	public void setDiscount(String discount) {
		this.discount = discount;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getWarranty() {
		return warranty;
	}
	public void setWarranty(String warranty) {
		this.warranty = warranty;
	}
	public String getMore_info() {
		return more_info;
	}
	public void setMore_info(String more_info) {
		this.more_info = more_info;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	
	
	
	
	
}

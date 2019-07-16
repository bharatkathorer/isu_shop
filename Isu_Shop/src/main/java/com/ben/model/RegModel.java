package com.ben.model;

import java.util.Arrays;

import javax.servlet.http.Part;

public class RegModel {
	
	@Override
	public String toString() {
		return "RegModel [id=" + id + ", user_id=" + user_id + ", fname=" + fname + ", mname=" + mname + ", lname="
				+ lname + ", email=" + email + ", password=" + password + ", p_pic=" + p_pic + ", address=" + address
				+ ", pincode=" + pincode + ", state=" + state + ", city=" + city + ", phone=" + phone + ", profile_Pic="
				+ Arrays.toString(profile_Pic) + "]";
	}
	private int id,user_id;
	private String fname,mname,lname,email,password;
	private Part p_pic;
	private String address,pincode,state,city,phone;
	
	
	
	public Part getP_pic() {
		return p_pic;
	}
	public void setP_pic(Part p_pic) {
		this.p_pic = p_pic;
	}
	private byte profile_Pic[];
	
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public byte[] getProfile_Pic() {
		return profile_Pic;
	}
	public void setProfile_Pic(byte[] profile_Pic) {
		this.profile_Pic = profile_Pic;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	

}

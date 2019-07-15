package com.ben.model;

public class CartModel {
	private int id;
	private String uid,pid , like_uid , like_pid , like_val;
	private int l_id ;
	
	
	public String getLike_uid() {
		return like_uid;
	}
	public void setLike_uid(String like_uid) {
		this.like_uid = like_uid;
	}
	public int getL_id() {
		return l_id;
	}
	public void setL_id(int l_id) {
		this.l_id = l_id;
	}
	
	@Override
	public String toString() {
		return "CartModel [id=" + id + ", uid=" + uid + ", pid=" + pid + ", like_uid=" + like_uid + ", like_pid="
				+ like_pid + ", like_val=" + like_val + ", l_id=" + l_id + "]";
	}
	public String getLike_pid() {
		return like_pid;
	}
	public void setLike_pid(String like_pid) {
		this.like_pid = like_pid;
	}
	public String getLike_val() {
		return like_val;
	}
	public void setLike_val(String like_val) {
		this.like_val = like_val;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	
	
	
	
	

}

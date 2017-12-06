package com.lele.pojo;


/**
 错误经不起失败，但是真理却不怕失败。
 @author乐乐
 @2017年12月1日@下午7:56:22
 */
public class User {
   
	
	private int id;
	private String username;
	private String password;
	private String phonenumber;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", phonenumber=" + phonenumber
				+ "]";
	}
	
	
	
	
	
}

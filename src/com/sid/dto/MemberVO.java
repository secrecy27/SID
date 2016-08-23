package com.sid.dto;

import java.sql.Timestamp;

public class MemberVO {

	private String nickname;
	private String address;
	private String zipNum;
	private String pwd;
	private String email;
	private String phone;
	private String useyn;
	private int admin;
	private Timestamp indate;
	
	public String getZipNum(){
		return zipNum;
	}
	public void setZipNum(String zipNum){
		this.zipNum=zipNum;
	}
	public String getUseyn(){
		return useyn;
	}
	public void setUseyn(String useyn){
		this.useyn=useyn;
	}
	public Timestamp getIndate(){
		return indate;
	}
	public void setIndate(Timestamp indate){
		this.indate=indate;
	}
	
	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getAdmin() {
		return admin;
	}

	public void setAdmin(int admin) {
		this.admin = admin;
	}


}

package com.sid.dto;

import java.sql.Timestamp;

public class CartVO {
	private int cseq; //장바구니번호
	private String email;
	private int pseq; //상품번호
	private int quantity;
	private int price;
	private Timestamp indate;
	private int aWriteId;
	private int cWriteId;
	private int hWriteId;
	
	
	
	public int getaWriteId() {
		return aWriteId;
	}
	public void setaWriteId(int aWriteId) {
		this.aWriteId = aWriteId;
	}
	public int getcWriteId() {
		return cWriteId;
	}
	public void setcWriteId(int cWriteId) {
		this.cWriteId = cWriteId;
	}
	public int gethWriteId() {
		return hWriteId;
	}
	public void sethWriteId(int hWriteId) {
		this.hWriteId = hWriteId;
	}
	public int getCseq() {
		return cseq;
	}
	public void setCseq(int cseq) {
		this.cseq = cseq;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getPseq() {
		return pseq;
	}
	public void setPseq(int pseq) {
		this.pseq = pseq;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Timestamp getIndate() {
		return indate;
	}
	public void setIndate(Timestamp indate) {
		this.indate = indate;
	}

	
}

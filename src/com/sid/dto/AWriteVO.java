package com.sid.dto;

import java.sql.Timestamp;

public class AWriteVO {
	private int aWriteId;
	private String imageUrl;
	private int cost;
	private Timestamp indate;
	
	public int getaWriteId() {
		return aWriteId;
	}
	public void setaWriteId(int aWriteId) {
		this.aWriteId = aWriteId;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public Timestamp getIndate() {
		return indate;
	}
	public void setIndate(Timestamp indate) {
		this.indate = indate;
	}

}

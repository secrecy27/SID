package com.sid.dto;

public class AWriteVO {
	private int aWriteId;
	private String imageUrl;
	private int cost;
	private String expl;
	private String userEmail;

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

	public String getExpl() {
		return expl;
	}

	public void setExpl(String expl) {
		this.expl = expl;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

}

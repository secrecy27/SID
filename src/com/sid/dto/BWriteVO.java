package com.sid.dto;

public class BWriteVO {
	private int bWriteId;
	private String imageUrl;
	private int cost;
	private String expl;
	private String userEmail;
	private String hashtag;
	

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public int getbWriteId() {
		return bWriteId;
	}

	public void setbWriteId(int bWriteId) {
		this.bWriteId = bWriteId;
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

	public String getHashtag() {
		return hashtag;
	}

	public void setHashtag(String hashtag) {
		this.hashtag = hashtag;
	}
	
}

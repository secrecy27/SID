package com.sid.dto;

import java.sql.Timestamp;

public class CWriteVO {

	private int cWriteId;
	private String imageUrl;
	private int cost;
	private Timestamp indate;
	private String hashtag;
	private String userEmail;

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public int getcWriteId() {
		return cWriteId;
	}

	public void setcWriteId(int cWriteId) {
		this.cWriteId = cWriteId;
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

	public String getHashtag() {
		return hashtag;
	}

	public void setHashtag(String hashtag) {
		this.hashtag = hashtag;
	}


}

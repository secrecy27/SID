package com.sid.dto;

public class DSuggestVO {
	private int dWriteId;
	private String designerEmail;
	private String suggestId;
	private int needTime;
	private int needCost;
	
	public int getdWriteId() {
		return dWriteId;
	}
	public int getNeedTime() {
		return needTime;
	}
	public void setNeedTime(int needTime) {
		this.needTime = needTime;
	}
	public int getNeedCost() {
		return needCost;
	}
	public void setNeedCost(int needCost) {
		this.needCost = needCost;
	}
	public void setdWriteId(int dWriteId) {
		this.dWriteId = dWriteId;
	}
	public String getDesignerEmail() {
		return designerEmail;
	}
	public void setDesignerEmail(String designerEmail) {
		this.designerEmail = designerEmail;
	}
	public String getSuggestId() {
		return suggestId;
	}
	public void setSuggestId(String suggestId) {
		this.suggestId = suggestId;
	}

}

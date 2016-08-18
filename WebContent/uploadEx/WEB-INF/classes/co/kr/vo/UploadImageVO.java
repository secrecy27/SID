package co.kr.vo;

import java.sql.Date;

public class UploadImageVO {

	private String num;

	private String title;

	private String description;

	private byte[] content;
	
	private String contentName;

	private String contentType;

	private Date date;

	private int record = 1;
	private int block = 10;
	
	public UploadImageVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UploadImageVO(String num, String title, String description,
			byte[] content, String contentName, String contentType, Date date,
			int record, int block) {
		super();
		this.num = num;
		this.title = title;
		this.description = description;
		this.content = content;
		this.contentName = contentName;
		this.contentType = contentType;
		this.date = date;
		this.record = record;
		this.block = block;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public byte[] getContent() {
		return content;
	}

	public void setContent(byte[] content) {
		this.content = content;
	}

	public String getContentName() {
		return contentName;
	}

	public void setContentName(String contentName) {
		this.contentName = contentName;
	}

	public String getContentType() {
		return contentType;
	}

	public void setContentType(String contentType) {
		this.contentType = contentType;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getRecord() {
		return record;
	}

	public void setRecord(int record) {
		this.record = record;
	}

	public int getBlock() {
		return block;
	}

	public void setBlock(int block) {
		this.block = block;
	}

}

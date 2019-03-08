package com.biz.jhproject.model;

public class CommuVO {
	
	private int c_num ;
	private String c_userid ;
	private String c_image ;
	private String c_title ;
	private String c_text ;
	private String c_time ;
	
	public int getC_num() {
		return c_num;
	}
	public void setC_num(int c_num) {
		this.c_num = c_num;
	}
	public String getC_userid() {
		return c_userid;
	}
	public void setC_userid(String c_userid) {
		this.c_userid = c_userid;
	}
	public String getC_image() {
		return c_image;
	}
	public void setC_image(String c_image) {
		this.c_image = c_image;
	}
	public String getC_title() {
		return c_title;
	}
	public void setC_title(String c_title) {
		this.c_title = c_title;
	}
	public String getC_text() {
		return c_text;
	}
	public void setC_text(String c_text) {
		this.c_text = c_text;
	}
	public String getC_time() {
		return c_time;
	}
	public void setC_time(String c_time) {
		this.c_time = c_time;
	}
	@Override
	public String toString() {
		return "CommuVO [c_num=" + c_num + ", c_userid=" + c_userid + ", c_image=" + c_image + ", c_title=" + c_title
				+ ", c_text=" + c_text + ", c_time=" + c_time + "]";
	}
	public CommuVO(int c_num, String c_userid, String c_image, String c_title, String c_text, String c_time) {
		super();
		this.c_num = c_num;
		this.c_userid = c_userid;
		this.c_image = c_image;
		this.c_title = c_title;
		this.c_text = c_text;
		this.c_time = c_time;
	}
	public CommuVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}

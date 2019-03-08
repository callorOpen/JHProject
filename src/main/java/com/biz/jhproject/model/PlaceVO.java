package com.biz.jhproject.model;

public class PlaceVO {
	
	private int p_num ;
	private String p_name ;
	private String p_image ;
	private String p_image2 ;
	private String p_map ;
	private String p_star ;
	private String p_city ;
	private String p_addr ;
	private String p_tel ;
	private String p_cate ;
	
	public int getP_num() {
		return p_num;
	}
	public void setP_num(int p_num) {
		this.p_num = p_num;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_image() {
		return p_image;
	}
	public void setP_image(String p_image) {
		this.p_image = p_image;
	}
	public String getP_image2() {
		return p_image2;
	}
	public void setP_image2(String p_image2) {
		this.p_image2 = p_image2;
	}
	public String getP_map() {
		return p_map;
	}
	public void setP_map(String p_map) {
		this.p_map = p_map;
	}
	public String getP_star() {
		return p_star;
	}
	public void setP_star(String p_star) {
		this.p_star = p_star;
	}
	public String getP_city() {
		return p_city;
	}
	public void setP_city(String p_city) {
		this.p_city = p_city;
	}
	public String getP_addr() {
		return p_addr;
	}
	public void setP_addr(String p_addr) {
		this.p_addr = p_addr;
	}
	public String getP_tel() {
		return p_tel;
	}
	public void setP_tel(String p_tel) {
		this.p_tel = p_tel;
	}
	public String getP_cate() {
		return p_cate;
	}
	public void setP_cate(String p_cate) {
		this.p_cate = p_cate;
	}
	@Override
	public String toString() {
		return "PlaceVO [p_num=" + p_num + ", p_name=" + p_name + ", p_image=" + p_image + ", p_image2=" + p_image2
				+ ", p_map=" + p_map + ", p_star=" + p_star + ", p_city=" + p_city + ", p_addr=" + p_addr + ", p_tel="
				+ p_tel + ", p_cate=" + p_cate + "]";
	}
	public PlaceVO(int p_num, String p_name, String p_image, String p_image2, String p_map, String p_star,
			String p_city, String p_addr, String p_tel, String p_cate) {
		super();
		this.p_num = p_num;
		this.p_name = p_name;
		this.p_image = p_image;
		this.p_image2 = p_image2;
		this.p_map = p_map;
		this.p_star = p_star;
		this.p_city = p_city;
		this.p_addr = p_addr;
		this.p_tel = p_tel;
		this.p_cate = p_cate;
	}
	public PlaceVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
}

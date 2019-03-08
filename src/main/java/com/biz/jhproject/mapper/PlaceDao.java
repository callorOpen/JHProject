package com.biz.jhproject.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.biz.jhproject.model.PlaceVO;


public interface PlaceDao {

	@Select("SELECT * FROM tbl_place")
	public List<PlaceVO> selectAll();
	
	@Select("SELECT * FROM tbl_place WHERE p_city LIKE #{p_city} ORDER BY p_name")
	public List<PlaceVO> findByCity(String p_city);
	
	@Select("SELECT * FROM tbl_place WHERE p_cate = #{p_cate} ORDER BY p_name")
	public List<PlaceVO> findByCate(String p_cate);
	
	@Select("SELECT * FROM tbl_place WHERE p_city = #{p_city} AND p_cate = #{p_cate} ORDER BY p_name")
	public List<PlaceVO> findByCateCity(String p_cate, String p_city);
	
	
}

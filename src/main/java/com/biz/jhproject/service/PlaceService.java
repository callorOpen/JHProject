package com.biz.jhproject.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biz.jhproject.mapper.PlaceDao;
import com.biz.jhproject.model.CommuVO;
import com.biz.jhproject.model.PlaceVO;

@Service
public class PlaceService {

	@Autowired
	PlaceDao pDao;

	public List<PlaceVO> findByCity(String p_city) {

		String trimcity = "%"+p_city+"%"; 
		return pDao.findByCity(trimcity);
	}

	public List<PlaceVO> findByCate(String p_cate) {

		return pDao.findByCate(p_cate);
	}
	
	public List<PlaceVO> findByCateCity(String p_cate, String p_city) {

		return pDao.findByCateCity(p_cate, p_city);
	}


}

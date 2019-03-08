package com.biz.jhproject.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biz.jhproject.mapper.CommuDao;
import com.biz.jhproject.model.CommuVO;

@Service
public class CommuService {

	@Autowired
	CommuDao cDao ;
	
	public CommuVO findByNum(int num) {
		
		CommuVO vo = cDao.findByNum(num);
		System.out.println(vo);
		return vo;
	}

	public List<CommuVO> selectAll() {
		
		return cDao.selectAll();
	}

	public void insert(CommuVO cVO) {
		
		SimpleDateFormat time = new SimpleDateFormat("yyyy년MM월dd일hh시mm분");
		Date date = new Date();
		String today = time.format(date);
		cVO.setC_time(today);
		
		cDao.insert(cVO);
	}
	
	
}

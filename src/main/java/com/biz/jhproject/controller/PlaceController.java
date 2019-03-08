package com.biz.jhproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.biz.jhproject.model.CommuVO;
import com.biz.jhproject.model.PlaceVO;
import com.biz.jhproject.service.PlaceService;

@Controller
public class PlaceController {
	
	@Autowired
	PlaceService pService ;
	
	@RequestMapping(value="place_gyunggi",method=RequestMethod.GET)
	public String place_gyunggi(String p_city, Model model) {
		
		p_city = "경기";
		List<PlaceVO> pList = pService.findByCity(p_city);
		System.out.println(pList.get(0));
		model.addAttribute("PLACE_LIST",pList);
		
		return "place_view";
	
	}
	@RequestMapping(value="place_gangwon",method=RequestMethod.GET)
	public String place_gangwon(String p_city, Model model) {
		
		p_city = "강원";
		List<PlaceVO> pList = pService.findByCity(p_city);
		model.addAttribute("PLACE_LIST",pList);
		
		return "place_view";
	
	}
	@RequestMapping(value="place_choongnam",method=RequestMethod.GET)
	public String place_choongnam(String p_city, Model model) {
		
		p_city = "충남";
		List<PlaceVO> pList = pService.findByCity(p_city);
		model.addAttribute("PLACE_LIST",pList);
		
		return "place_view";
	
	}
	@RequestMapping(value="place_choongbuk",method=RequestMethod.GET)
	public String place_choongbuk(String p_city, Model model) {
		
		p_city = "충북";
		List<PlaceVO> pList = pService.findByCity(p_city);
		model.addAttribute("PLACE_LIST",pList);
		
		return "place_view";
	
	}
	@RequestMapping(value="place_gyungbuk",method=RequestMethod.GET)
	public String place_gyungbuk(String p_city, Model model) {
		
		p_city = "경북";
		List<PlaceVO> pList = pService.findByCity(p_city);
		model.addAttribute("PLACE_LIST",pList);
		
		return "place_view";
	
	}
	@RequestMapping(value="place_junbuk",method=RequestMethod.GET)
	public String place_junbuk(String p_city, Model model) {
		
		p_city = "전북";
		List<PlaceVO> pList = pService.findByCity(p_city);
		model.addAttribute("PLACE_LIST",pList);
		
		return "place_view";
	
	}
	@RequestMapping(value="place_gyungnam",method=RequestMethod.GET)
	public String place_gyungnam(String p_city, Model model) {
		
		p_city = "경남";
		List<PlaceVO> pList = pService.findByCity(p_city);
		model.addAttribute("PLACE_LIST",pList);
		
		return "place_view";
	
	}
	@RequestMapping(value="place_junnam",method=RequestMethod.GET)
	public String place_junnam(String p_city, Model model) {
		
		p_city = "전남";
		List<PlaceVO> pList = pService.findByCity(p_city);
		model.addAttribute("PLACE_LIST",pList);
		
		return "place_view";
	
	}
	@RequestMapping(value="place_jeju",method=RequestMethod.GET)
	public String place_jeju(String p_city, Model model) {
		
		p_city = "제주";
		List<PlaceVO> pList = pService.findByCity(p_city);
		model.addAttribute("PLACE_LIST",pList);
		
		return "place_view";
	
	}
	
	@RequestMapping(value="place_res",method=RequestMethod.GET)
	public String place_res(String p_cate, Model model) {
		
		p_cate = "restaurant";
		List<PlaceVO> pList = pService.findByCate(p_cate);
		model.addAttribute("PLACE_LIST",pList);
		
		return "place_view";
	
	}
	
	@RequestMapping(value="place_cafe",method=RequestMethod.GET)
	public String place_cafe(String p_cate, Model model) {
		
		p_cate = "cafe";
		List<PlaceVO> pList = pService.findByCate(p_cate);
		model.addAttribute("PLACE_LIST",pList);
		
		return "place_view";
	
	}
	@RequestMapping(value="place_hotel",method=RequestMethod.GET)
	public String place_hotel(String p_cate, Model model) {
		
		p_cate = "hotel";
		List<PlaceVO> pList = pService.findByCate(p_cate);
		model.addAttribute("PLACE_LIST",pList);
		
		return "place_view";
	
	}
	
}

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
import com.biz.jhproject.service.CommuService;

@Controller
public class CommunityController {
	
	@Autowired
	CommuService cService ;
	
	@RequestMapping(value="community",method=RequestMethod.GET)
	public String community(Model model) {
		
		List<CommuVO> cList = cService.selectAll();
		model.addAttribute("COMMU_LIST",cList);
		
		return "community";
	
	}
	
	@RequestMapping(value="snspop",method=RequestMethod.GET)
	public String snspop(@RequestParam("key") int num, Model model) {
		
		CommuVO vo = cService.findByNum(num);
		model.addAttribute("COMMU_INFO",vo);
		System.out.println(vo);
		return "/body/commu-form";
	
	}
	
	@RequestMapping(value="commu_write",method=RequestMethod.GET)
	public String commu_write() {
		
		return "/body/commu-write-form-new";
	
	}
	
	@RequestMapping(value="commu_wirte_sucess",method=RequestMethod.POST,
			produces="text/plan;charset=utf8")
	public String commu_write_sucess(@ModelAttribute CommuVO cVO) {
		
		cService.insert(cVO);
		
		return "redirect:/commu_write";
	
	}
}

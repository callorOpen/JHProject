package com.biz.jhproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.biz.jhproject.model.MemberVO;
import com.biz.jhproject.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MemberController {
	
	@Autowired
	MemberService mService;

	@RequestMapping(value="join-pop",method=RequestMethod.GET)
	public String join(Model model) {
		
		model.addAttribute("BODY","JOIN-FORM");
		return "/body/join-form-new";
	
	}

	@RequestMapping(value="join",
			method=RequestMethod.POST,
			produces="text/plan;charset=utf8")	
	public String join(@ModelAttribute MemberVO memberVO) {

		log.debug(memberVO.toString());
		
		mService.insert(memberVO);
		return "redirect:/";
		
	}
	
	@ResponseBody
	@RequestMapping(value="id_check",
		method=RequestMethod.POST,
		produces="text/html;charset=utf8")
	public String id_check(@RequestParam String m_userid) {
		String ret = "";
		
		MemberVO vo = mService.findById(m_userid);
		
		if(vo == null) ret = "사용할 수 있는 ID 입니다";
		else ret = "이미 등록된 ID 입니다";
		return ret;
	}
	

	
}
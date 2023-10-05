package com.application.kpims.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/mypage")
public class MypageController {

	@GetMapping("/cartlist")
	public ModelAndView cartlist() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/mypage/cartlist");
		return mv;
		
	}
	
}

package com.application.kpims.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
@RequestMapping("/member")
public class MemberController {
	
	@GetMapping("/register")
	public ModelAndView register() throws Exception{
		return new ModelAndView("/CsBody/member/register");
	}
	
	@GetMapping("/login")
	public ModelAndView login() throws Exception{
		return new ModelAndView("/CsBody/member/login");
	}


}

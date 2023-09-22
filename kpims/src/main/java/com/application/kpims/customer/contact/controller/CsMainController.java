package com.application.kpims.customer.contact.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.application.kpims.admin.member.service.AdminMemberService;

@Controller
@RequestMapping("/customer/project")
public class CsMainController {
	@GetMapping("/main")
	public ModelAndView main() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/costomer/main");
		
		return mv;
	}
	

}

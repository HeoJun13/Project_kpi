package com.application.kpims.contact.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin/project")
public class MainController {
	
	@GetMapping("/main")
	public ModelAndView main() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/project/main");
		
		return mv;
	}


}

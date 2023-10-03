package com.application.kpims.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/shop")
public class ShopController {
	
	@GetMapping("/list")
	public ModelAndView list() throws Exception{
		return new ModelAndView("/shop/list");
	}
}

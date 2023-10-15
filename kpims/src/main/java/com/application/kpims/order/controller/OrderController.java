package com.application.kpims.order.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("/order")
@Controller
public class OrderController {
	
	@GetMapping("/orderShop")
	public  ModelAndView orderdetail(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/mypage/orderdetail");
		
		return mv;
	
	}

}

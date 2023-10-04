package com.application.kpims.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.application.kpims.admin.shop.dto.ShopDTO;
import com.application.kpims.shop.service.ShopService;


@Controller
@RequestMapping("/shop")
public class ShopController {
	
	@Autowired ShopService shopService;
	
	@GetMapping("/list")
public ModelAndView list(@ModelAttribute ShopDTO shopDTO) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/shop/list");
		
		mv.addObject("shopList" , shopService.getshopList(shopDTO));
		
		return mv;
		
	}
}

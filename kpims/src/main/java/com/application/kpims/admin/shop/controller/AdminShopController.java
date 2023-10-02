package com.application.kpims.admin.shop.controller;


import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.application.kpims.admin.shop.dto.ShopDTO;
import com.application.kpims.admin.shop.service.AdminShopService;


@Repository
@Controller
@RequestMapping("/admin/shop")
public class AdminShopController {
	
	@Autowired
	private AdminShopService adminShopService;
	
	@GetMapping("/add")
	public ModelAndView add() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/admin/shop");
		
		return mv;
		
	}
	@PostMapping("/add")
	public ResponseEntity<Object> add(HttpServletRequest multipartRequest) throws Exception {
		multipartRequest.setCharacterEncoding("utf-8");
		
		SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");
		
		ShopDTO shopDTO = new ShopDTO();
		shopDTO.setShopNm(multipartRequest.getParameter("shopNm"));
		shopDTO.setPrice(Integer.parseInt(multipartRequest.getParameter("price")));
		shopDTO.setDiscountRate(Integer.parseInt(multipartRequest.getParameter("discountRate")));
		shopDTO.setStock(Integer.parseInt(multipartRequest.getParameter("stock")));
		shopDTO.setPart(multipartRequest.getParameter("part"));
		shopDTO.setPoint(Integer.parseInt(multipartRequest.getParameter("point")));
		shopDTO.setDeliveryPrice(Integer.parseInt(multipartRequest.getParameter("deliveryPrice")));
		shopDTO.setIntro(multipartRequest.getParameter("intro"));
		
	
		
		adminShopService.addNewshop(shopDTO);
		String jsScript= "<script>";
		   jsScript += " alert('상품을 등록하였습니다.');";
		   jsScript +=" location.href='/admin/shop/add';";
		   jsScript +="</script>";
	
	HttpHeaders responseHeaders = new HttpHeaders();
 responseHeaders.add("Content-Type", "text/html; charset=utf-8");
	
	return new ResponseEntity<Object>(jsScript, responseHeaders, HttpStatus.OK);
	
	}
}

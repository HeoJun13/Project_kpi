package com.application.kpims.admin.shop.controller;


import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.application.kpims.admin.shop.dto.ShopDTO;
import com.application.kpims.admin.shop.service.AdminShopService;
import com.application.kpims.shop.service.ShopService;


@Controller
@RequestMapping("/admin/shop")
public class AdminShopController {
	
	@Autowired
	private AdminShopService adminShopService;
	@Autowired
	private ShopService shopService;
	
	//private final String SHOP_IMAGE_REPO_PATH = "C:\\Project_Files\\";	
	private final String SHOP_IMAGE_REPO_PATH = "/Users/junhoheo/upload/";	
	
	@GetMapping("/add")
	public ModelAndView add() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/admin/shop");
		
		return mv;
		
	}
	@PostMapping("/add")
	public ResponseEntity<Object> add(MultipartHttpServletRequest multipartRequest) throws Exception {
		
		multipartRequest.setCharacterEncoding("utf-8");
		
		SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");
		
		ShopDTO shopDTO = new ShopDTO();
		shopDTO.setShopNm(multipartRequest.getParameter("shopNm"));
		shopDTO.setPrice(Integer.parseInt(multipartRequest.getParameter("price")));
		shopDTO.setDiscountRate(Integer.parseInt(multipartRequest.getParameter("discountRate")));
		shopDTO.setStock(Integer.parseInt(multipartRequest.getParameter("stock")));
		shopDTO.setSalesStatus(multipartRequest.getParameter("salesStatus"));
		shopDTO.setPart(multipartRequest.getParameter("part"));
		shopDTO.setPoint(Integer.parseInt(multipartRequest.getParameter("point")));
		shopDTO.setDeliveryPrice(Integer.parseInt(multipartRequest.getParameter("deliveryPrice")));
		shopDTO.setIntro(multipartRequest.getParameter("intro"));
		
		
		Iterator<String> file = multipartRequest.getFileNames();
		if (file.hasNext()) {
			
			MultipartFile uploadFile = multipartRequest.getFile(file.next()); 	
			
			if(!uploadFile.getOriginalFilename().isEmpty()) {
				String uploadFileName = UUID.randomUUID() + "_" + uploadFile.getOriginalFilename();
				File f = new File(SHOP_IMAGE_REPO_PATH + uploadFileName);	
				uploadFile.transferTo(f); 
				shopDTO.setShopFileName(uploadFileName);
			}
		}	
		
		adminShopService.addNewshop(shopDTO);
		
		String jsScript= "<script>";
		   jsScript += " alert('상품을 등록하였습니다.');";
		   jsScript += "location.href='list';";
		   jsScript +="</script>";
	
	HttpHeaders responseHeaders = new HttpHeaders();
 responseHeaders.add("Content-Type", "text/html; charset=utf-8");
	
	return new ResponseEntity<Object>(jsScript, responseHeaders, HttpStatus.OK);
	
	}
	
	@GetMapping("/list")
	public ModelAndView list() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/admin/shopList");
		
		mv.addObject("shopList", adminShopService.getShopList());
		return mv;
		
	}
	
	@GetMapping("/Modify")
	public ModelAndView Modify(@RequestParam("shopCd") int shopCd) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/admin/shopModify");
		mv.addObject("shopDTO", shopService.getShopDetail(shopCd));
		
		return mv;
	}
	
	@PostMapping("/Modify")
		public ResponseEntity<Object> Modify(MultipartHttpServletRequest multipartRequest) throws Exception {
		
		multipartRequest.setCharacterEncoding("utf-8");
		
		SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");
		
		ShopDTO shopDTO = new ShopDTO();
		shopDTO.setShopCd(Integer.parseInt(multipartRequest.getParameter("shopCd")));
		shopDTO.setShopNm(multipartRequest.getParameter("shopNm"));
		shopDTO.setPrice(Integer.parseInt(multipartRequest.getParameter("price")));
		shopDTO.setDiscountRate(Integer.parseInt(multipartRequest.getParameter("discountRate")));
		shopDTO.setStock(Integer.parseInt(multipartRequest.getParameter("stock")));
		shopDTO.setSalesStatus(multipartRequest.getParameter("salesStatus"));
		shopDTO.setPart(multipartRequest.getParameter("part"));
		shopDTO.setPoint(Integer.parseInt(multipartRequest.getParameter("point")));
		shopDTO.setDeliveryPrice(Integer.parseInt(multipartRequest.getParameter("deliveryPrice")));
		shopDTO.setIntro(multipartRequest.getParameter("intro"));
		
		
		Iterator<String> file = multipartRequest.getFileNames();
		if (file.hasNext()) {
			
			MultipartFile uploadFile = multipartRequest.getFile(file.next()); 	
			
			if(!uploadFile.getOriginalFilename().isEmpty()) {
				String uploadFileName = UUID.randomUUID() + "_" + uploadFile.getOriginalFilename();
				File f = new File(SHOP_IMAGE_REPO_PATH + uploadFileName);	
				uploadFile.transferTo(f); 
				shopDTO.setShopFileName(uploadFileName);
			
				//new File(SHOP_IMAGE_REPO_PATH + adminShopService.getShopDetail(Integer.parseInt(multipartRequest.getParameter("shopCd"))).getShopFileName()).delete();
			}
		}	
		
		//System.out.println("+==========");
		//System.out.println(shopDTO);
		adminShopService.shopModify(shopDTO);
		
		String jsScript= "<script>";
		   jsScript += " alert('상품정보를 수정하였습니다.');";
		   jsScript += "location.href='list';";
		   jsScript +="</script>";
	
	HttpHeaders responseHeaders = new HttpHeaders();
 responseHeaders.add("Content-Type", "text/html; charset=utf-8");
	
	return new ResponseEntity<Object>(jsScript, responseHeaders, HttpStatus.OK);
	
	}
	
	@GetMapping("/adminShopRemove")
	public ResponseEntity<Object> adminGoodsRemove(@RequestParam("shopCd") int shopCd) throws Exception {
		
		//new File(SHOP_IMAGE_REPO_PATH + adminShopService.getshopDetail(shopCd).getGoodsFileName()).delete();
		adminShopService.shopRemove(shopCd);
		
		String jsScript= "<script>";
			   jsScript += " alert('등록된 상품을 삭제하였습니다.');";
			   jsScript += "location.href='list';";
			   jsScript +="</script>";

		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		
		return new ResponseEntity<Object>(jsScript, responseHeaders, HttpStatus.OK);

	}
}

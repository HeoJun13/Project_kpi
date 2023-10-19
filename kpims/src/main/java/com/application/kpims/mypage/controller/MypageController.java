package com.application.kpims.mypage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.application.kpims.member.service.MemberService;
import com.application.kpims.mypage.dto.MypageDTO;
import com.application.kpims.mypage.service.MypageService;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	
	@Autowired
	private MypageService mypageService;
	private MemberService memberService;
	

	@GetMapping("/addcart")
	@ResponseBody
	public String addCart(@RequestParam ("shopCd") int shopCd , @RequestParam ("cartshopQty") int cartshopQty , HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		String memberId = (String)session.getAttribute("memberId");
		
		
		MypageDTO mypageDTO = new MypageDTO();
		mypageDTO.setMemberId(memberId);
		mypageDTO.setShopCd(shopCd);
		mypageDTO.setCartshopQty(cartshopQty);
		
		String result = "duple";
		if (!mypageService.checkDuplicatedCart(mypageDTO)) {
			mypageService.addCart(mypageDTO);
			session.setAttribute("myCartCnt" , memberService.getMyCartCnt((memberId)));
			result = "notDuple";
		} 
		
		return result;
		
	}

	@GetMapping("/cartlist")
	public ModelAndView cartlist(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/mypage/cartlist");
		
		String memberId = (String)session.getAttribute("memberId");
		mv.addObject("cartlist" , mypageService.getMyCartList(memberId));
		mv.addObject("countCartList", mypageService.countCartList(memberId));
		
		return mv;
		
	}
	
	@GetMapping("/deleteCart")
	public ResponseEntity<Object> deleteCart(@RequestParam("cartCdList") String cartCdList , HttpServletRequest request) {
		
		String[] temp = cartCdList.split(",");
		int[] deleteCartCdList = new int[temp.length];

		for (int i = 0; i < temp.length; i++) {
			deleteCartCdList[i] = Integer.parseInt(temp[i]);
		}
		
		mypageService.removeCart(deleteCartCdList);
		
		
		HttpSession session = request.getSession();
		session.setAttribute("myCartCnt" , memberService.getMyCartCnt((String)session.getAttribute("memberId")));
		
		String jsScript = "<script>";
		   jsScript += "alert('장바구니 품목이 삭제되었습니다.'); ";
		   jsScript += "location.href='cartlist'";
		   jsScript += "</script>";
		   
		   HttpHeaders responseHeaders = new HttpHeaders();
		    responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		
		return new ResponseEntity<Object>(jsScript, responseHeaders, HttpStatus.OK);
		
	}
	
	
	
}

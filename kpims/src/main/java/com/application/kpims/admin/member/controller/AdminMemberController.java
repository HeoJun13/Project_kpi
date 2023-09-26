package com.application.kpims.admin.member.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.application.kpims.admin.member.dto.AdminMemberDTO;
import com.application.kpims.admin.member.service.AdminMemberService;

@Controller
@RequestMapping("/admin/member")
public class AdminMemberController {
	
	@Autowired
	private AdminMemberService adminMemberService;
	
	
	
	@GetMapping("/login")
	public ModelAndView login() throws Exception{
		return new ModelAndView("adminBody/login");
	}
	
	@PostMapping("/login")
	public ModelAndView login( @ModelAttribute AdminMemberDTO adminMemberDTO, HttpSession session) throws Exception {
		String name = adminMemberService.adminlogin(adminMemberDTO , session);
		ModelAndView mv = new ModelAndView();
		if (name != null) { //로그인 성공시
			mv.setViewName("/project/main");
		}
		else { //로그인 실패시
			mv.setViewName("adminBody/login");
			mv.addObject("message", "error" );
		}
		
		
		return mv;
	}
	
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session , ModelAndView mv) {
		adminMemberService.logout(session);
		mv.setViewName("adminBody/login");
		mv.addObject("message" , "logout");
		
		return mv;
		
	}
	
	@GetMapping("memberList")
	public ModelAndView memberList() {
		return new ModelAndView("/project/memberList");
	}
}

package com.application.kpims.member.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.application.kpims.member.dto.MemberDTO;
import com.application.kpims.member.service.MemberService;
@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/register")
	public ModelAndView register() throws Exception{
		return new ModelAndView("/CsBody/member/register");
	}
	
	
	@PostMapping("/register")
	public ResponseEntity<Object> register(MemberDTO memberDTO , HttpServletRequest request) throws Exception {
		
		memberService.registerMember(memberDTO);
		String message  = "<script>";
		   message += " alert('회원가입되었습니다.');";
		   message += " location.href='" + request.getContextPath() + "/member/login';";
		   message += " </script>";
 
 HttpHeaders responseHeaders = new HttpHeaders();
 responseHeaders.add("Content-Type", "text/html; charset=utf-8");
	
	return new ResponseEntity<Object>(message, responseHeaders, HttpStatus.OK);
	
	}
	@GetMapping("/login")
	public ModelAndView login() throws Exception{
		return new ModelAndView("/CsBody/member/login");
	}
	@PostMapping("/login")
	public ModelAndView login( @ModelAttribute MemberDTO memberDTO, HttpSession session) throws Exception {
		String name = memberService.login(memberDTO , session);
		ModelAndView mv = new ModelAndView();
		if (name != null) { //로그인 성공시
			mv.setViewName("/costomer/main");
		}
		else { //로그인 실패시
			mv.setViewName("/CsBody/member/login");
			mv.addObject("message", "error" );
		}
		return mv;
	}
	
	@GetMapping("/logout")
	public ResponseEntity<Object> logout(HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		session.invalidate(); 
		
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		
		String jsScript = "<script>";
			   jsScript += "location.href='" + request.getContextPath() + "/customer/project/main';";
			   jsScript += " </script>";
		
		return new ResponseEntity<Object>(jsScript, responseHeaders, HttpStatus.OK);

	}
}

package com.application.kpims.admin.member.controller;

import java.net.http.HttpHeaders;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.application.kpims.admin.member.dto.AdminDTO;
import com.application.kpims.admin.member.service.AdminMemberService;
import com.sun.net.httpserver.HttpHandler;

@Controller
@RequestMapping("/admin/member")
public class AdminMemberController {
	
	@Autowired
	private AdminMemberService adminMemberService;
	
	@GetMapping("/login")
	public ModelAndView login() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/admin/member/login");
		return mv;
	}
	@PostMapping("/login")
	public ResponseEntity<Object> login(AdminDTO adminDTO, HttpServletRequest request) throws Exception {
		
		String jsScript = "";
		
		if (adminMemberService.adminlogin(adminDTO)) {
			
			HttpSession session = request.getSession();
			session.setAttribute("memberId", adminDTO.getAdminId());
			session.setAttribute("role", "admin");
			session.setMaxInactiveInterval(60 * 30);
			
			jsScript  = "<script>";
			jsScript += " alert('로그인 되었습니다.');";
			jsScript += " location.href='" + request.getContextPath() + "/';";
			jsScript += " </script>";
			
		}
		else {
			
			jsScript  = "<script>";
			jsScript += " alert('로그인에 실패하였습니다. 아이디와 비밀번호를 확인하세요.');";
			jsScript += " history.go(-1);";
			jsScript += " </script>";
			
		}
		
		
		return null;
	}
	

}

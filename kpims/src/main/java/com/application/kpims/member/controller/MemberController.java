package com.application.kpims.member.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.application.kpims.member.dto.AddressDTO;
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
	
	@RequestMapping("/checkId.do")
    @ResponseBody //ajax 값을 바로jsp 로 보내기위해 사용
    public String checkId(@RequestParam("memberId") String memberId) {
		 String result="N";
        
        int flag = memberService.checkId(memberId);
        
        if(flag == 1) result ="Y"; 
        //아이디가 있을시 Y 없을시 N 으로jsp view 로 보냄
        return result;
    }
	
	
	
	
	@GetMapping("/login")
	public ModelAndView login() throws Exception{
		return new ModelAndView("/CsBody/member/login");
	}
	
	@PostMapping("/login")
	public ModelAndView login( @ModelAttribute MemberDTO memberDTO, HttpSession session) throws Exception {
		MemberDTO name = memberService.login(memberDTO , session);
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
	
	
	@GetMapping("/addressadd")
	public ModelAndView addressbook() {
		
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/mypage/myAddressBook");
		
		return mv;
		
	}
	
	@PostMapping("/addressadd")
	public ResponseEntity<Object> addressadd(AddressDTO addressDTO , HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		String memberId = (String)session.getAttribute("memberId");
		
		addressDTO.setMemberId(memberId);
		
		memberService.addressbook(addressDTO);
		memberService.checkDuplicatedAddress(addressDTO);
		
		String message  = "<script>";
		   message += " alert('등록되었습니다.');";
		   message += " location.href='" + request.getContextPath() + "/member/addresslist';";
		   message += " </script>";

		   		HttpHeaders responseHeaders = new HttpHeaders();
		   		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		 
	return new ResponseEntity<Object>(message, responseHeaders, HttpStatus.OK);
	
	}
	
	@GetMapping("/addresslist")
	public String addresslist(ModelAndView mv  , Model model , HttpServletRequest request) throws Exception{
		
		HttpSession session = request.getSession();
		
		String memberId = (String)session.getAttribute("memberId");
		List<MemberDTO> list = memberService.getMyAddressList(memberId);
		mv.addObject("countAddressList", memberService.countAddressList(memberId));
		model.addAttribute("addresslist", list);
		
		return "/mypage/AddressList";
		
	}
}

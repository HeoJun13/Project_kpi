package com.application.kpims.member.service;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.application.kpims.member.dto.MemberDTO;

@Service 
@Component
public interface MemberService {
	
	public void registerMember(MemberDTO memberDTO) throws Exception;
	public String login(MemberDTO memberDTO, HttpSession session) throws Exception;
	public int getMyCartCnt(String memberId);

	
}

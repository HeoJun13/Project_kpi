package com.application.kpims.member.service;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.application.kpims.member.dto.AddressDTO;
import com.application.kpims.member.dto.MemberDTO;

@Service 
@Component
public interface MemberService {
	
	public void registerMember(MemberDTO memberDTO) throws Exception;
	public String login(MemberDTO memberDTO, HttpSession session) throws Exception;
	public int getMyCartCnt(String memberId);
	public int checkId(String memberId);
	public void addressbook(AddressDTO addressDTO) throws Exception;
	public List<Map<String,Object>> getMyAddressList(String memberId) throws Exception;
	public int countAddressList(String memberId) throws Exception;
	public boolean checkDuplicatedAddress(AddressDTO addressDTO) throws Exception;

	
}

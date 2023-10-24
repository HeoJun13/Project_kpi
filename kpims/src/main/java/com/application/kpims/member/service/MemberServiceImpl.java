package com.application.kpims.member.service;



import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.kpims.member.dao.MemberDAO;
import com.application.kpims.member.dto.AddressDTO;
import com.application.kpims.member.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	

	@Override
	public void registerMember(MemberDTO memberDTO) throws Exception {
		
		if (memberDTO.getEmailstsYn() == null)  memberDTO.setEmailstsYn("N");
		if (memberDTO.getSmsstsYn() == null)    memberDTO.setSmsstsYn("N");
		memberDAO.insertMember(memberDTO);
		
	}
	
	@Override
	public String login(MemberDTO memberDTO, HttpSession session) throws Exception {
		String name = memberDAO.selectLogin(memberDTO);
		if (name != null) { //세션 변수 저장
			session.setAttribute("memberId", memberDTO.getMemberId());
			session.setAttribute("name", name);
		}
		return name;
	}

	@Override
	public int getMyCartCnt(String memberId) {
		return memberDAO.selectMyCartCnt(memberId);
	}

	@Override
	public int checkId(String memberId) {
		int result = 0;
        
        result = memberDAO.checkId(memberId);
        return result;
	}

	@Override
	public void addressbook(AddressDTO addressDTO) throws Exception{
		memberDAO.insertAddress(addressDTO);
		
	}

	@Override
	public List<Map<String, Object>> getMyAddressList(String memberId) {
		return memberDAO.selectMyAddress(memberId);
	}

	@Override
	public int countAddressList(String memberId) {
		return memberDAO.selectCountAddress(memberId);
	}

	@Override
	public boolean checkDuplicatedAddress(AddressDTO addressDTO) {
		if (memberDAO.checkDuplicatedAddress(addressDTO) == null) return false;
		else												      return true;
	}



	

}

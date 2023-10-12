package com.application.kpims.member.service;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.kpims.member.dao.MemberDAO;
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

	


	

}

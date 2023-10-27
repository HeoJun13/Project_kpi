package com.application.kpims.admin.member.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.application.kpims.admin.member.dao.AdminMemberDAO;
import com.application.kpims.admin.member.dto.AdminMemberDTO;
import com.application.kpims.member.dto.MemberDTO;

@Service
public class AdminMemberServiceImpl implements AdminMemberService {
	
	@Inject
	private AdminMemberDAO adminMemberDAO;

	@Override
	public AdminMemberDTO adminlogin(AdminMemberDTO adminMemberDTO, HttpSession session) throws Exception {
		AdminMemberDTO name = adminMemberDAO.selectAdminLogin(adminMemberDTO);
		if (name != null) { //세션 변수 저장
			session.setAttribute("adminId", adminMemberDTO.getAdminId());
			session.setAttribute("name", name);
		}
		return name;
	}

	@Override
	public void logout(HttpSession sessiong) {
		sessiong.invalidate(); //세션 초기화
	}

	@Override
	public List<MemberDTO> getMemberList() {
		return adminMemberDAO.memberList();
	}

	
	


}

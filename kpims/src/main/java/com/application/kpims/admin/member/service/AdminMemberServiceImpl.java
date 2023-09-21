package com.application.kpims.admin.member.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.kpims.admin.member.dao.AdminMemberDAO;
import com.application.kpims.admin.member.dto.AdminMemberDTO;

@Service
public class AdminMemberServiceImpl implements AdminMemberService {
	
	@Inject
	private AdminMemberDAO adminMemberDAO;

	@Override
	public String adminlogin(AdminMemberDTO adminMemberDTO, HttpSession session) throws Exception {
		String name = adminMemberDAO.selectAdminLogin(adminMemberDTO);
		if (name != null) { //세션 변수 저장
			session.setAttribute("adminId", adminMemberDTO.getAdminId());
			session.setAttribute("name", name);
		}
		return name;
	}
	


}

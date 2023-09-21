package com.application.kpims.admin.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.kpims.admin.member.dao.AdminMemberDAO;
import com.application.kpims.admin.member.dto.AdminMemberDTO;

@Service
public class AdminMemberServiceImpl implements AdminMemberService {
	
	@Autowired
	private AdminMemberDAO adminMemberDAO;
	

	@Override
	public boolean adminlogin(AdminMemberDTO adminMemberDTO) throws Exception {
		
		if (adminMemberDAO.selectAdminLogin(adminMemberDTO) != null) {
			return true;
		}
		
		return false;
	}

}

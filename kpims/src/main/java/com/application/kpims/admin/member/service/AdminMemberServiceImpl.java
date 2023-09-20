package com.application.kpims.admin.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.kpims.admin.member.dao.AdminMemberDAO;
import com.application.kpims.admin.member.dto.AdminDTO;

@Service

public class AdminMemberServiceImpl implements AdminMemberService {
	
	@Autowired
	private AdminMemberDAO adminMemberDAO;
	
	//@Autowired
	//private BCryptPasswordEncoder bCryptPasswordEncoder;

	@Override
	public boolean adminlogin(AdminDTO adminDTO) throws Exception {
		
		if (adminMemberDAO.selectAdminLogin(adminDTO) != null) {
			return true;
		}
		return false;
	}

}

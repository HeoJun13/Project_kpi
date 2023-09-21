package com.application.kpims.admin.member.service;

import javax.servlet.http.HttpSession;
import com.application.kpims.admin.member.dto.AdminMemberDTO;

public interface AdminMemberService {

	public String adminlogin(AdminMemberDTO adminMemberDTO , HttpSession session) throws Exception;
	public void logout(HttpSession sessiong);
}

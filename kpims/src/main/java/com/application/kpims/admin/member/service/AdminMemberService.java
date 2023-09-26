package com.application.kpims.admin.member.service;

import java.util.List;

import javax.servlet.http.HttpSession;
import com.application.kpims.admin.member.dto.AdminMemberDTO;
import com.application.kpims.member.dto.MemberDTO;

public interface AdminMemberService {

	public String adminlogin(AdminMemberDTO adminMemberDTO , HttpSession session) throws Exception;
	public void logout(HttpSession sessiong);
	public List<MemberDTO> getMemberList();
}

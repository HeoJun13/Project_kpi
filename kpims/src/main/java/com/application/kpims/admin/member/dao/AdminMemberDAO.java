package com.application.kpims.admin.member.dao;

import java.util.List;

import com.application.kpims.admin.member.dto.AdminMemberDTO;
import com.application.kpims.member.dto.MemberDTO;

public interface AdminMemberDAO {

	public String selectAdminLogin(AdminMemberDTO adminMemberDTO) throws Exception;

	public List<MemberDTO> memberList();
}

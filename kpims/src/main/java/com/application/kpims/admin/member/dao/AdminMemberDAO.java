package com.application.kpims.admin.member.dao;

import com.application.kpims.admin.member.dto.AdminMemberDTO;

public interface AdminMemberDAO {

	public AdminMemberDTO selectAdminLogin(AdminMemberDTO adminMemberDTO) throws Exception;

	

}

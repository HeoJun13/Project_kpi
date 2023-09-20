package com.application.kpims.admin.member.dao;

import com.application.kpims.admin.member.dto.AdminDTO;

public interface AdminMemberDAO {

	public AdminDTO selectAdminLogin(AdminDTO adminDTO) throws Exception;

	

}

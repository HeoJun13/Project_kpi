package com.application.kpims.admin.member.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.application.kpims.admin.member.dto.AdminMemberDTO;

@Repository
public class AdminMemberDAOImpl implements AdminMemberDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public AdminMemberDTO selectAdminLogin(AdminMemberDTO adminDTO) throws Exception {
		return sqlSession.selectOne("admin.member.selectAdminLogin" , adminDTO);
	}
	
}

package com.application.kpims.admin.member.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.application.kpims.admin.member.dto.AdminMemberDTO;

@Repository // 현재 클래스를 dao bean으로 등록
public class AdminMemberDAOImpl implements AdminMemberDAO {

	@Inject // 현재 클래스를 dao bean으로 등록
	private SqlSession sqlSession;

	@Override
	public String selectAdminLogin(AdminMemberDTO adminMemberDTO) throws Exception {
		return sqlSession.selectOne("admin.member.select_AdminLogin" , adminMemberDTO);
	}
	
}

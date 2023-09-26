package com.application.kpims.admin.member.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.application.kpims.admin.member.dto.AdminMemberDTO;
import com.application.kpims.member.dto.MemberDTO;

@Repository // 현재 클래스를 dao bean으로 등록
public class AdminMemberDAOImpl implements AdminMemberDAO {

	@Inject // 현재 클래스를 dao bean으로 등록
	private SqlSession sqlSession;

	@Override
	public String selectAdminLogin(AdminMemberDTO adminMemberDTO) throws Exception {
		return sqlSession.selectOne("admin.member.select_AdminLogin" , adminMemberDTO);
	}

	@Override
	public List<MemberDTO> memberList() {
		return sqlSession.selectList("admin.member.memberList");
	}
	
}

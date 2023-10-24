package com.application.kpims.member.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.application.kpims.member.dto.AddressDTO;
import com.application.kpims.member.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertMember(MemberDTO memberDTO) throws Exception{
		sqlSession.insert("member.insertMember" , memberDTO);
	}
	
	@Override
	public int checkId(String memberId) {
		return sqlSession.selectOne("member.checkId" , memberId);
	}

	@Override
	public String selectLogin(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectOne("member.selectLogin", memberDTO);
	}

	@Override
	public int selectMyCartCnt(String memberId) {
		return sqlSession.selectOne("member.selectMyCartCnt", memberId);
	}

	@Override
	public void insertAddress(AddressDTO addressDTO) throws Exception {
		sqlSession.insert("member.insertAddress" , addressDTO);
		
	}

	@Override
	public List<Map<String, Object>> selectMyAddress(String memberId) {
		return sqlSession.selectList("member.selectMyAddress", memberId);
	}

	@Override
	public int selectCountAddress(String memberId) {
		return sqlSession.selectOne("member.selectCountAddress" , memberId);
	}

	@Override
	public AddressDTO checkDuplicatedAddress(AddressDTO addressDTO) {
		return sqlSession.selectOne("member.checkDuplicatedAddress" , addressDTO);
	}




	

}

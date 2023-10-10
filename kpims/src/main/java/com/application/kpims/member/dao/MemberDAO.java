package com.application.kpims.member.dao;

import com.application.kpims.member.dto.MemberDTO;

public interface MemberDAO {

	public void insertMember(MemberDTO memberDTO) throws Exception;

	public String selectLogin(MemberDTO memberDTO) throws Exception;

	public int selectMyCartCnt(String memberId);

	//public String MemberIdCheck(String memberId);


	

}

package com.application.kpims.member.dao;

import java.util.List;
import java.util.Map;

import com.application.kpims.member.dto.AddressDTO;
import com.application.kpims.member.dto.MemberDTO;

public interface MemberDAO {

	public void insertMember(MemberDTO memberDTO) throws Exception;

	public MemberDTO selectLogin(MemberDTO memberDTO) throws Exception;

	public int selectMyCartCnt(String memberId);

	public int checkId(String memberId);

	public void insertAddress(AddressDTO addressDTO) throws Exception;

	public List<MemberDTO> selectMyAddress(String memberId);

	public int selectCountAddress(String memberId);

	public AddressDTO checkDuplicatedAddress(AddressDTO addressDTO);




	

}

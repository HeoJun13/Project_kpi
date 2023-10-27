package com.application.kpims.mypage.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.application.kpims.member.dto.MemberDTO;
import com.application.kpims.mypage.dto.MypageDTO;

@Repository
public interface MypageService {

	public List<Map<String,Object>> getMyCartList(String memberId);
	public boolean checkDuplicatedCart(MypageDTO mypageDTO);
	public void addCart(MypageDTO mypageDTO);
	public int countCartList(String memberId);
	public void removeCart(int[] deleteCartCdList);
	public MemberDTO getMyInfo(String memberId);
	public void modifyMyInfo(MemberDTO memberDTO);


}

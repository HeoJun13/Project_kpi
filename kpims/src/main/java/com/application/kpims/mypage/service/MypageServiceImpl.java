package com.application.kpims.mypage.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.kpims.member.dto.MemberDTO;
import com.application.kpims.mypage.dao.MypageDAO;
import com.application.kpims.mypage.dto.MypageDTO;

@Service
public class MypageServiceImpl implements MypageService{
	
	@Autowired
	private MypageDAO mypageDAO;

	@Override
	public List<Map<String, Object>> getMyCartList(String memberId) {
		return mypageDAO.selectMyCart(memberId);
	}

	@Override
	public boolean checkDuplicatedCart(MypageDTO mypageDTO) {
		if (mypageDAO.selectOneDuplicatedCart(mypageDTO) == null) return false;
		else												      return true;
	}

	@Override
	public void addCart(MypageDTO mypageDTO) {
		mypageDAO.insertCart(mypageDTO);
	}

	@Override
	public int countCartList(String memberId) {
		return mypageDAO.selectCountMyCart(memberId);
	}

	@Override
	public void removeCart(int[] deleteCartCdList) {
		mypageDAO.deleteCart(deleteCartCdList);
	}

	@Override
	public MemberDTO getMyInfo(String memberId) {
		return mypageDAO.selectOneMyInfo(memberId);
	}

	@Override
	public void modifyMyInfo(MemberDTO memberDTO) {
		if (memberDTO.getSmsstsYn() == null) memberDTO.setSmsstsYn("N"); 
		if (memberDTO.getEmailstsYn() == null) memberDTO.setEmailstsYn("N");
		mypageDAO.updateMyInfo(memberDTO);
		
	}


}

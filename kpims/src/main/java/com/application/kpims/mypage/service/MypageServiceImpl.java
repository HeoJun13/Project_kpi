package com.application.kpims.mypage.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.kpims.mypage.dao.MypageDAO;


@Service
public class MypageServiceImpl implements MypageService{
	
	@Autowired
	private MypageDAO mypageDAO;

	@Override
	public List<Map<String, Object>> getMyCartList(String memberId) {
		return mypageDAO.selectMyCart(memberId);
	}

}

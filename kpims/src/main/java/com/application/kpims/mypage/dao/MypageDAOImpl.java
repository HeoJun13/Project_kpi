package com.application.kpims.mypage.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MypageDAOImpl implements MypageDAO{

	@Autowired
	private SqlSession SqlSession;
	
	
	@Override
	public List<Map<String, Object>> selectMyCart(String memberId) {
		return SqlSession.selectList("myPage.selectListMyCart" , memberId);
	}

}

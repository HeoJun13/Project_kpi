package com.application.kpims.mypage.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.application.kpims.mypage.dto.MypageDTO;


@Repository
public class MypageDAOImpl implements MypageDAO {

	@Autowired
	private SqlSession sqlSession;
	
	
	
	@Override
	public MypageDTO selectOneDuplicatedCart(MypageDTO mypageDTO) {
		return sqlSession.selectOne("mypage.selectOneDuplicatedCart" , mypageDTO);
	}
	@Override
	public void insertCart(MypageDTO mypageDTO) {
		sqlSession.insert("mypage.insertCart" , mypageDTO);
	}
	@Override
	public List<Map<String, Object>> selectMyCart(String memberId) {
		return sqlSession.selectList("mypage.selectMyCart", memberId);
	}
	@Override
	public int selectCountMyCart(String memberId) {
		return sqlSession.selectOne("mypage.selectCountMyCart" , memberId);
	}
	@Override
	public void deleteCart(int[] deleteCartCdList) {
		sqlSession.delete("mypage.deleteCart", deleteCartCdList);
	}

}

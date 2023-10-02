package com.application.kpims.admin.shop.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.application.kpims.admin.shop.dto.ShopDTO;

@Repository
public class AdminShopDAOImpl implements AdminShopDAO {
	
	@Autowired
	private SqlSession sqlSession;


	@Override
	public void insertShop(ShopDTO shopDTO) {
		sqlSession.insert("admin.shop.insert_shop");
		
		
	}

}

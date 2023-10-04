package com.application.kpims.shop.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.application.kpims.admin.shop.dto.ShopDTO;

@Repository
public class ShopDAOImpl implements ShopDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<ShopDTO> selectShopList(ShopDTO shopDTO) {
		return sqlSession.selectList("shop.selectListShop" , shopDTO);	
	}

}

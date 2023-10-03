package com.application.kpims.admin.shop.dao;

import java.util.List;

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
		sqlSession.insert("admin.shop.insert_shop" , shopDTO);
	}
	@Override
	public List<ShopDTO> selectShopList() {
		return sqlSession.selectList("admin.shop.select_shop");
	}
	@Override
	public void updateshop(ShopDTO shopDTO) {
	sqlSession.update("admin.shop.update_shop", shopDTO);
	}
	@Override
	public void delectshop(int shopCd) {
		sqlSession.delete("admin.shop.delect_shop", shopCd);
		
	}
	
}

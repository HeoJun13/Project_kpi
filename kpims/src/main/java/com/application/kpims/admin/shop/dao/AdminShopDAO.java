package com.application.kpims.admin.shop.dao;

import java.util.List;

import com.application.kpims.admin.shop.dto.ShopDTO;

public interface AdminShopDAO {


	public void insertShop(ShopDTO shopDTO);
	public List<ShopDTO> selectShopList();
	public void updateshop(ShopDTO shopDTO);
	public void delectshop(int shopCd);

}

package com.application.kpims.shop.dao;

import java.util.List;

import com.application.kpims.admin.shop.dto.ShopDTO;

public interface ShopDAO {

	public List<ShopDTO> selectShopList(ShopDTO shopDTO);
	public ShopDTO selectOneShop(int shopCd) throws Exception;
	public List<ShopDTO> selectelatedShopList(ShopDTO shopDTO) throws Exception;

}

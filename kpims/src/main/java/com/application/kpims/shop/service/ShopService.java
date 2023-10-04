package com.application.kpims.shop.service;

import java.util.List;

import com.application.kpims.admin.shop.dto.ShopDTO;

public interface ShopService {

	public List<ShopDTO> getshopList(ShopDTO shopDTO);
	public ShopDTO getShopDetail(int shopCd) throws Exception;
	public List<ShopDTO> getRelatedShopList(ShopDTO shopDTO)throws Exception;

}

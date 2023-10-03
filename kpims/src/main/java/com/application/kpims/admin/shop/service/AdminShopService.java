package com.application.kpims.admin.shop.service;

import java.util.List;

import com.application.kpims.admin.shop.dto.ShopDTO;

public interface AdminShopService {

	public void addNewshop(ShopDTO shopDTO) throws Exception;
	public List<ShopDTO>getShopList();
	public void shopModify(ShopDTO shopDTO);
	public void shopRemove(int shopCd);
	
	

}

package com.application.kpims.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.kpims.admin.shop.dto.ShopDTO;
import com.application.kpims.shop.dao.ShopDAO;

@Service
public class ShopServiceImpl implements ShopService {
	
	@Autowired
	private ShopDAO shopDAO;
	
	
	@Override
	public List<ShopDTO> getshopList(ShopDTO shopDTO) {
		return shopDAO.selectShopList(shopDTO);
	}
	@Override
	public ShopDTO getShopDetail(int shopCd) throws Exception {
		return shopDAO.selectOneShop(shopCd);
	}
	@Override
	public List<ShopDTO> getRelatedShopList(ShopDTO shopDTO) throws Exception{
		return shopDAO.selectelatedShopList(shopDTO);
	}

}

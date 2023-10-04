package com.application.kpims.admin.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.kpims.admin.shop.dao.AdminShopDAO;
import com.application.kpims.admin.shop.dto.ShopDTO;

@Service
public class AdminShopServiceImpl implements AdminShopService {
	
	@Autowired AdminShopDAO adminShopDAO;
	
	@Override
	public void addNewshop(ShopDTO shopDTO) throws Exception {
		adminShopDAO.insertShop(shopDTO);
	}

	@Override
	public List<ShopDTO> getShopList() {
		return adminShopDAO.selectShopList();
	}

	@Override
	public void shopModify(ShopDTO shopDTO) {
		adminShopDAO.updateshop(shopDTO);
		
	}

	@Override
	public void shopRemove(int shopCd) {
		adminShopDAO.delectshop(shopCd);
		
	}


}

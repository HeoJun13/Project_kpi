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

}

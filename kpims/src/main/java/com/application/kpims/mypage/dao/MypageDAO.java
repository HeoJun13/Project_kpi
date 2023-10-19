package com.application.kpims.mypage.dao;

import java.util.List;
import java.util.Map;

import com.application.kpims.mypage.dto.MypageDTO;

public interface MypageDAO {

	public List<Map<String, Object>> selectMyCart(String memberId);
	public MypageDTO selectOneDuplicatedCart(MypageDTO mypageDTO);
	public void insertCart(MypageDTO mypageDTO);
	public int selectCountMyCart(String memberId);
	public void deleteCart(int[] deleteCartCdList);


}

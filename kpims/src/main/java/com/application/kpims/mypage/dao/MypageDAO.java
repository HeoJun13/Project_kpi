package com.application.kpims.mypage.dao;

import java.util.List;
import java.util.Map;

public interface MypageDAO {

	List<Map<String, Object>> selectMyCart(String memberId);


}

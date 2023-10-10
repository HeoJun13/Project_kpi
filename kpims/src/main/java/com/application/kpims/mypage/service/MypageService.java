package com.application.kpims.mypage.service;

import java.util.List;
import java.util.Map;

public interface MypageService {

	public List<Map<String,Object>> getMyCartList(String memberId);

}

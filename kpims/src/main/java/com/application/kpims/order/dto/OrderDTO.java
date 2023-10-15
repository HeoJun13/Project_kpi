package com.application.kpims.order.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class OrderDTO {
	
	private long orderCd;
	private String memberId;
	private int goodsCd;
	private int orderGoodsQty;
	private int paymentAmt;
	private String ordererNm;
	private String ordererHp;
	private String receiverNm;
	private String receiverHp;
	private String zipcode;
	private String roadAddress;
	private String jibunAddress;
	private String namujiAddress;
	private String deliveryMethod;
	private String deliveryMessage;
	private String deliveryStatus;
	private String payMethod;
	private String payOrdererHp;
	private String cardCompanyNm;
	private String cardPayMonth;
	private Date payOrderTime;

}

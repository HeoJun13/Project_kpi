package com.application.kpims.mypage.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class MypageDTO {
	
	private long cartCd;
	private int shopCd;		  // 번호
	private int cartshopQty;	  // 장바구니 개수
	private String memberId;  // 회원아이디
	private String shippingInfo; // 배송정보
	private Date enrollDt;
	public long getCartCd() {
		return cartCd;
	}
	public void setCartCd(long cartCd) {
		this.cartCd = cartCd;
	}
	public int getShopCd() {
		return shopCd;
	}
	public void setShopCd(int shopCd) {
		this.shopCd = shopCd;
	}
	public int getCartshopQty() {
		return cartshopQty;
	}
	public void setCartshopQty(int cartshopQty) {
		this.cartshopQty = cartshopQty;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getShippingInfo() {
		return shippingInfo;
	}
	public void setShippingInfo(String shippingInfo) {
		this.shippingInfo = shippingInfo;
	}
	public Date getEnrollDt() {
		return enrollDt;
	}
	public void setEnrollDt(Date enrollDt) {
		this.enrollDt = enrollDt;
	}
	@Override
	public String toString() {
		return "MypageDTO [cartCd=" + cartCd + ", shopCd=" + shopCd + ", cartshopQty=" + cartshopQty + ", memberId="
				+ memberId + ", shippingInfo=" + shippingInfo + ", enrollDt=" + enrollDt + "]";
	}

	
	
}

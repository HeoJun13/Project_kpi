package com.application.kpims.admin.shop.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class ShopDTO {
	
	private int shopCd;
	private String shopNm;
	private int price;
	private int discountRate;
	private int stock;
	private String salesStatus;
	private int point;
	private int deliveryPrice;
	private String part;
	private String contentsOrder;
	private String intro;
	private String shopFileName;
	private Date enrollDt;
	public int getShopCd() {
		return shopCd;
	}
	public void setShopCd(int shopCd) {
		this.shopCd = shopCd;
	}
	public String getShopNm() {
		return shopNm;
	}
	public void setShopNm(String shopNm) {
		this.shopNm = shopNm;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getDiscountRate() {
		return discountRate;
	}
	public void setDiscountRate(int discountRate) {
		this.discountRate = discountRate;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getSalesStatus() {
		return salesStatus;
	}
	public void setSalesStatus(String salesStatus) {
		this.salesStatus = salesStatus;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getDeliveryPrice() {
		return deliveryPrice;
	}
	public void setDeliveryPrice(int deliveryPrice) {
		this.deliveryPrice = deliveryPrice;
	}
	public String getPart() {
		return part;
	}
	public void setPart(String part) {
		this.part = part;
	}
	public String getContentsOrder() {
		return contentsOrder;
	}
	public void setContentsOrder(String contentsOrder) {
		this.contentsOrder = contentsOrder;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getShopFileName() {
		return shopFileName;
	}
	public void setShopFileName(String shopFileName) {
		this.shopFileName = shopFileName;
	}
	public Date getEnrollDt() {
		return enrollDt;
	}
	public void setEnrollDt(Date enrollDt) {
		this.enrollDt = enrollDt;
	}
	@Override
	public String toString() {
		return "ShopDTO [shopCd=" + shopCd + ", shopNm=" + shopNm + ", price=" + price + ", discountRate="
				+ discountRate + ", stock=" + stock + ", salesStatus=" + salesStatus + ", point=" + point
				+ ", deliveryPrice=" + deliveryPrice + ", part=" + part + ", contentsOrder=" + contentsOrder
				+ ", intro=" + intro + ", shopFileName=" + shopFileName + ", enrollDt=" + enrollDt + "]";
	}
	
	
}

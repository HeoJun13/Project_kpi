package com.application.kpims.member.dto;

import javax.xml.crypto.Data;

import org.springframework.stereotype.Component;

@Component
public class AddressDTO {
	
	private long AddressCd;
	private String memberId;
	private int    memberCd;
	private String recipientNm;
	private String postcode;
	private String address;
	private String detailAddress;
	private String recipientHp;
	private String deliveryRequest;
	private Data joinDt;
	public long getAddressCd() {
		return AddressCd;
	}
	public void setAddressCd(long addressCd) {
		AddressCd = addressCd;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getMemberCd() {
		return memberCd;
	}
	public void setMemberCd(int memberCd) {
		this.memberCd = memberCd;
	}
	public String getRecipientNm() {
		return recipientNm;
	}
	public void setRecipientNm(String recipientNm) {
		this.recipientNm = recipientNm;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDetailAddress() {
		return detailAddress;
	}
	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}
	public String getRecipientHp() {
		return recipientHp;
	}
	public void setRecipientHp(String recipientHp) {
		this.recipientHp = recipientHp;
	}
	public String getDeliveryRequest() {
		return deliveryRequest;
	}
	public void setDeliveryRequest(String deliveryRequest) {
		this.deliveryRequest = deliveryRequest;
	}
	public Data getJoinDt() {
		return joinDt;
	}
	public void setJoinDt(Data joinDt) {
		this.joinDt = joinDt;
	}
	@Override
	public String toString() {
		return "AddressDTO [AddressCd=" + AddressCd + ", memberId=" + memberId + ", memberCd=" + memberCd
				+ ", recipientNm=" + recipientNm + ", postcode=" + postcode + ", address=" + address
				+ ", detailAddress=" + detailAddress + ", recipientHp=" + recipientHp + ", deliveryRequest="
				+ deliveryRequest + ", joinDt=" + joinDt + "]";
	}
	
	
	
}

package com.application.kpims.admin.member.dto;

import javax.xml.crypto.Data;

import org.springframework.stereotype.Component;

@Component
public class AdminMemberDTO {
	private String adminId;
	private String passwd;
	private Data joinDt;
	
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public Data getJoinDt() {
		return joinDt;
	}
	public void setJoinDt(Data joinDt) {
		this.joinDt = joinDt;
	}
	@Override
	public String toString() {
		return "AdminMemberDTO [adminId=" + adminId + ", passwd=" + passwd + ", joinDt=" + joinDt + "]";
	}
	
	
}

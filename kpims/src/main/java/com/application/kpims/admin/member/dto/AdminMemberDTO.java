package com.application.kpims.admin.member.dto;

import org.springframework.stereotype.Component;

@Component
public class AdminMemberDTO {
	
	private String adminId;
	private String passwd;
	private String joinDt;
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
	public String getJoinDt() {
		return joinDt;
	}
	public void setJoinDt(String joinDt) {
		this.joinDt = joinDt;
	}
	@Override
	public String toString() {
		return "AdminDTO [adminId=" + adminId + ", passwd=" + passwd + ", joinDt=" + joinDt + "]";
	}
	
	
}

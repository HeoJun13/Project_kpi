package com.application.kpims.member.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class MemberDTO {
	
	private long memberCd;
	private String memberId;
	private String memberNm;
	private String nickname;
	private String passwd;
	private String sex;
	private String dateBirth;
	private String hp;
	private String smsstsYn;
	private String email;
	private String emailstsYn;
	private Date joinDt;
	public long getMemberCd() {
		return memberCd;
	}
	public void setMemberCd(long memberCd) {
		this.memberCd = memberCd;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberNm() {
		return memberNm;
	}
	public void setMemberNm(String memberNm) {
		this.memberNm = memberNm;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getDateBirth() {
		return dateBirth;
	}
	public void setDateBirth(String dateBirth) {
		this.dateBirth = dateBirth;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getSmsstsYn() {
		return smsstsYn;
	}
	public void setSmsstsYn(String smsstsYn) {
		this.smsstsYn = smsstsYn;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEmailstsYn() {
		return emailstsYn;
	}
	public void setEmailstsYn(String emailstsYn) {
		this.emailstsYn = emailstsYn;
	}
	public Date getJoinDt() {
		return joinDt;
	}
	public void setJoinDt(Date joinDt) {
		this.joinDt = joinDt;
	}
	@Override
	public String toString() {
		return "MemberDTO [memberCd=" + memberCd + ", memberId=" + memberId + ", memberNm=" + memberNm + ", nickname="
				+ nickname + ", passwd=" + passwd + ", sex=" + sex + ", dateBirth=" + dateBirth + ", hp=" + hp
				+ ", smsstsYn=" + smsstsYn + ", email=" + email + ", emailstsYn=" + emailstsYn + ", joinDt=" + joinDt
				+ "]";
	}
	
}

package com.vo;

public class AddressVO {
	private Integer aid;
	private String apro;
	private String ashi;
	public AddressVO() {
	}
	public AddressVO(Integer aid, String apro, String ashi) {
		this.aid = aid;
		this.apro = apro;
		this.ashi = ashi;
	}
	public Integer getAid() {
		return aid;
	}
	public void setAid(Integer aid) {
		this.aid = aid;
	}
	public String getApro() {
		return apro;
	}
	public void setApro(String apro) {
		this.apro = apro;
	}
	public String getAshi() {
		return ashi;
	}
	public void setAshi(String ashi) {
		this.ashi = ashi;
	}
	@Override
	public String toString() {
		return "AddressVO [aid=" + aid + ", apro=" + apro + ", ashi=" + ashi + "]";
	}
}

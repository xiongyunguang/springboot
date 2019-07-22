package com.vo;

import java.sql.Date;

public class ContractVO {
	private Integer conid;//��ͬid
	private String conimg;//��ͬͼƬ
	private String contitle;//��ͬ����
	private String condetails;//��ͬ����
	private Date condate;//��ͬʱ��
	private Integer constatus;//��ͬ״̬
	private ClientVO conclient;//���  ��ͬ�ͻ�(��)
	private UserVO conuser;//���  ��ͬԱ��(��)
	public ContractVO() {
	}
	public ContractVO(Integer conid, String conimg, String contitle, String condetails, Date condate, Integer constatus,
			ClientVO conclient, UserVO conuser) {
		this.conid = conid;
		this.conimg = conimg;
		this.contitle = contitle;
		this.condetails = condetails;
		this.condate = condate;
		this.constatus = constatus;
		this.conclient = conclient;
		this.conuser = conuser;
	}
	public Integer getConid() {
		return conid;
	}
	public void setConid(Integer conid) {
		this.conid = conid;
	}
	public String getConimg() {
		return conimg;
	}
	public void setConimg(String conimg) {
		this.conimg = conimg;
	}
	public String getContitle() {
		return contitle;
	}
	public void setContitle(String contitle) {
		this.contitle = contitle;
	}
	public String getCondetails() {
		return condetails;
	}
	public void setCondetails(String condetails) {
		this.condetails = condetails;
	}
	public Date getCondate() {
		return condate;
	}
	public void setCondate(Date condate) {
		this.condate = condate;
	}
	public Integer getConstatus() {
		return constatus;
	}
	public void setConstatus(Integer constatus) {
		this.constatus = constatus;
	}
	public ClientVO getConclient() {
		return conclient;
	}
	public void setConclient(ClientVO conclient) {
		this.conclient = conclient;
	}
	public UserVO getConuser() {
		return conuser;
	}
	public void setConuser(UserVO conuser) {
		this.conuser = conuser;
	}
	@Override
	public String toString() {
		return "ContractVO [conid=" + conid + ", conimg=" + conimg + ", contitle=" + contitle + ", condetails="
				+ condetails + ", condate=" + condate + ", constatus=" + constatus + ", conclient=" + conclient
				+ ", conuser=" + conuser + "]";
	}
}

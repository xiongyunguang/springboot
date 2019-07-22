package com.vo;

import java.sql.Date;

public class JobVO {
	private Integer jid;//��������id
	private String jtitle;//�������ű���
	private String jcontent;//������������
	private Date jdate;//������������
	private Integer jtype;//���������Ƿ����(�����0��δ���1)
	private ClientVO jtarget;//���  ����������ԵĿͻ�
	private UserVO juser;//���  ������������Ա��

	public JobVO() {
	}

	public JobVO(Integer jid, String jtitle, String jcontent, Date jdate, Integer jtype, ClientVO jtarget,
			UserVO juser) {
		this.jid = jid;
		this.jtitle = jtitle;
		this.jcontent = jcontent;
		this.jdate = jdate;
		this.jtype = jtype;
		this.jtarget = jtarget;
		this.juser = juser;
	}

	public Integer getJid() {
		return jid;
	}

	public void setJid(Integer jid) {
		this.jid = jid;
	}

	public String getJtitle() {
		return jtitle;
	}

	public void setJtitle(String jtitle) {
		this.jtitle = jtitle;
	}

	public String getJcontent() {
		return jcontent;
	}

	public void setJcontent(String jcontent) {
		this.jcontent = jcontent;
	}

	public Date getJdate() {
		return jdate;
	}

	public void setJdate(Date jdate) {
		this.jdate = jdate;
	}

	public Integer getJtype() {
		return jtype;
	}

	public void setJtype(Integer jtype) {
		this.jtype = jtype;
	}

	public ClientVO getJtarget() {
		return jtarget;
	}

	public void setJtarget(ClientVO jtarget) {
		this.jtarget = jtarget;
	}

	public UserVO getJuser() {
		return juser;
	}

	public void setJuser(UserVO juser) {
		this.juser = juser;
	}

	@Override
	public String toString() {
		return "JobVO [jid=" + jid + ", jtitle=" + jtitle + ", jcontent=" + jcontent + ", jdate=" + jdate + ", jtype="
				+ jtype + ", jtarget=" + jtarget + ", juser=" + juser + "]";
	}
}

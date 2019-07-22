package com.vo;

public class ClientVO {
	private Integer cid;//�ͻ�id
	private String cname;//�ͻ�����
	private String csex;//�ͻ��Ա�
	private Integer cage;//�ͻ�����
	private String cphone;//�ͻ���ϵ��ʽ
	private String cemail;//�ͻ�����
	private String cprofession;//�ͻ�ְҵ
	private Integer cstate;//�ͻ�״̬(Ǳ�ڡ��¿ͻ����Ͽͻ�)
	private String ccontext;//�ͻ���ϸ������Ϣ
	private AddressVO clocation;//�ͻ���������
	private String cimage;//�ͻ���Ƭ
	private UserVO userid;//���  ����Ա��

	public ClientVO() {
	}

	public ClientVO(Integer cid, String cname, String csex, Integer cage, String cphone, String cemail,
			String cprofession, Integer cstate, String ccontext, AddressVO clocation, String cimage, UserVO userid) {
		this.cid = cid;
		this.cname = cname;
		this.csex = csex;
		this.cage = cage;
		this.cphone = cphone;
		this.cemail = cemail;
		this.cprofession = cprofession;
		this.cstate = cstate;
		this.ccontext = ccontext;
		this.clocation = clocation;
		this.cimage = cimage;
		this.userid = userid;
	}

	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCsex() {
		return csex;
	}
	public void setCsex(String csex) {
		this.csex = csex;
	}
	public Integer getCage() {
		return cage;
	}
	public void setCage(Integer cage) {
		this.cage = cage;
	}
	public String getCphone() {
		return cphone;
	}
	public void setCphone(String cphone) {
		this.cphone = cphone;
	}
	public String getCemail() {
		return cemail;
	}
	public void setCemail(String cemail) {
		this.cemail = cemail;
	}
	public String getCprofession() {
		return cprofession;
	}
	public void setCprofession(String cprofession) {
		this.cprofession = cprofession;
	}
	public Integer getCstate() {
		return cstate;
	}
	public void setCstate(Integer cstate) {
		this.cstate = cstate;
	}
	public String getCcontext() {
		return ccontext;
	}
	public void setCcontext(String ccontext) {
		this.ccontext = ccontext;
	}
	
	
	public AddressVO getClocation() {
		return clocation;
	}
	public void setClocation(AddressVO clocation) {
		this.clocation = clocation;
	}
	public String getCimage() {
		return cimage;
	}
	public void setCimage(String cimage) {
		this.cimage = cimage;
	}
	public UserVO getUserid() {
		return userid;
	}
	public void setUserid(UserVO userid) {
		this.userid = userid;
	}
	@Override
	public String toString() {
		return "ClientVO [cid=" + cid + ", cname=" + cname + ", csex=" + csex + ", cage=" + cage + ", cphone=" + cphone
				+ ", cemail=" + cemail + ", cprofession=" + cprofession + ", cstate=" + cstate + ", ccontext="
				+ ccontext + ", clocation=" + clocation + ", cimage=" + cimage + ", userid=" + userid + "]";
	}
	
	
}

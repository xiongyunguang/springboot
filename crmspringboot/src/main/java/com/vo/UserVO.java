package com.vo;

import java.sql.Date;

public class UserVO {
	private Integer uid;//�û�ID
	private String uaccount;//�û��˺�
	private String upassword;//�û�����
	private String uname;//�û���
	private Integer utype;//�û�����״̬���Ƿ���ְ��
	private Integer upost;//�û�ְ��(����0��Ա��1)
	private Integer uage;//�û�����
	private Integer uowner;//�û�����������id(ֱ�Ӹ�id)
	private String usex;//�û��Ա�
	private Date uwrokday;//�û���ְ����
	private Date uquitworkday;//�û���ְ����
	private AddressVO uaddress;//���  ��ַ
	public UserVO() {
	}
	
	public UserVO(Integer uid, String uaccount, String upassword, String uname, Integer utype, Integer upost,
			Integer uage, Integer uowner, String usex, Date uwrokday, Date uquitworkday, AddressVO uaddress) {
		this.uid = uid;
		this.uaccount = uaccount;
		this.upassword = upassword;
		this.uname = uname;
		this.utype = utype;
		this.upost = upost;
		this.uage = uage;
		this.uowner = uowner;
		this.usex = usex;
		this.uwrokday = uwrokday;
		this.uquitworkday = uquitworkday;
		this.uaddress = uaddress;
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getUaccount() {
		return uaccount;
	}

	public void setUaccount(String uaccount) {
		this.uaccount = uaccount;
	}

	public String getUpassword() {
		return upassword;
	}

	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public Integer getUtype() {
		return utype;
	}

	public void setUtype(Integer utype) {
		this.utype = utype;
	}

	public Integer getUpost() {
		return upost;
	}

	public void setUpost(Integer upost) {
		this.upost = upost;
	}

	public Integer getUage() {
		return uage;
	}

	public void setUage(Integer uage) {
		this.uage = uage;
	}

	public Integer getUowner() {
		return uowner;
	}

	public void setUowner(Integer uowner) {
		this.uowner = uowner;
	}

	public String getUsex() {
		return usex;
	}

	public void setUsex(String usex) {
		this.usex = usex;
	}

	public Date getUwrokday() {
		return uwrokday;
	}

	public void setUwrokday(Date uwrokday) {
		this.uwrokday = uwrokday;
	}

	public Date getUquitworkday() {
		return uquitworkday;
	}

	public void setUquitworkday(Date uquitworkday) {
		this.uquitworkday = uquitworkday;
	}

	public AddressVO getUaddress() {
		return uaddress;
	}

	public void setUaddress(AddressVO uaddress) {
		this.uaddress = uaddress;
	}

	@Override
	public String toString() {
		return "UserVO [uid=" + uid + ", uaccount=" + uaccount + ", upassword=" + upassword + ", uname=" + uname
				+ ", utype=" + utype + ", upost=" + upost + ", uage=" + uage + ", uowner=" + uowner + ", usex=" + usex
				+ ", uwrokday=" + uwrokday + ", uquitworkday=" + uquitworkday + ", uaddress=" + uaddress + "]";
	}
	
}

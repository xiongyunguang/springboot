package com.dao.user;

import java.util.List;

import com.vo.ClientVO;
import com.vo.ContractVO;
import com.vo.JobVO;
import com.vo.UserVO;

public interface UserDao {
	
	//�����û���������û���   ����     �������ݿ��ж�Ӧ���û�����
	public UserVO showUser(UserVO u);
	
	//�����û���������û�id �������ݿ��ж�Ӧ���û�����
	public UserVO showOneUser(UserVO u);
	
	//�����û�����(����) ��ѯ�������û�(Ա��)
	public List<UserVO> showOwnerUser(UserVO u);
	
	//�����û����� �޸�Ա������ְ״̬  
	public boolean changeUType(UserVO u);
	
	//���������û�����   ���пͻ��Ľ���(�޸Ŀͻ��������Ա��id)
	public boolean changeOwnerClient(UserVO old,UserVO news);
		
	//�����û�����(����)  �鿴����������к�ͬ
	public List<ContractVO> showAllContract(UserVO u);
	
	//�����û�����(����)  �鿴����������й���
	public List<JobVO> showAllJob(UserVO u);
	
	//�����û�����(����)  �鿴����������пͻ�
	public List<ClientVO> showAllclient(UserVO u);
}

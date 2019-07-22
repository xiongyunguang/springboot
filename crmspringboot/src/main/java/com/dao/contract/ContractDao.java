package com.dao.contract;

import java.util.List;

import com.vo.ClientVO;
import com.vo.ContractVO;
import com.vo.UserVO;

public interface ContractDao {
//	  |-������ͬ��ͼƬ����ͬ��Ҫ��Ϣ   ��������ͬ��Կͻ���״̬���и���
//    |-�鿴��ͬ��ֻ�ܲ鿴δ�鵵״̬�ĺ�ͬ��ֻ�ܲ鿴�Լ�ǩ���ĺ�ͬ
//    |-�޸ĺ�ͬ��ֻ���޸�δ�ɽ���ͬ�������Լ�״̬
	
	//�����ͬ����  �����º�ͬ
	public boolean addNewContract(ContractVO c);
	
	//�����ͬ����  ��ȡ�ú�ͬ��id
	public ContractVO showOneContract(ContractVO c);
	
	//�����ͬ����   �޸ĺ�ͬ��Ϣ
	public boolean changeContract(ContractVO c);
	
	//�����û�����   ��ȡ�����к�ͬ��id
	public List<ContractVO> showOwnerContract(UserVO u);
	
	//����ͻ����� ��ȡ��ͬ��Ϣ��id
	public List<ContractVO> showCidContract(ClientVO c);
}

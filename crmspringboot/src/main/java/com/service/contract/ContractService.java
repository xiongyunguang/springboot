package com.service.contract;

import java.util.List;

import com.vo.ClientVO;
import com.vo.ContractVO;
import com.vo.UserVO;

public interface ContractService {

	//�����ͬ����  �����º�ͬ
	public String addNewContract(ContractVO c);
	
	//�����ͬ����  ��ȡ�ú�ͬ
	public ContractVO showOneContract(ContractVO c);
	
	//�����ͬ����   �޸ĺ�ͬ��Ϣ
	public String changeContract(ContractVO c);
	
	//�����û�����   ��ȡ�����к�ͬ��id
	public List<ContractVO> showOwnerContract(UserVO u);
	
	//����ͻ����� ��ȡ��ͬ��Ϣ��id
	public List<ContractVO> showCidContract(ClientVO c);
}

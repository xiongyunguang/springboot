package com.dao.client;

import java.util.List;

import com.vo.ClientVO;
import com.vo.UserVO;

public interface ClientDao {
//	  |-�鿴��ֻ�ܲ鿴���Լ�����Ŀͻ�(�ͻ��Ļ�����Ϣ)
//    |-�����������¼�ͻ�����������ϵ��ʽ���ͻ�״̬
//    |-�޸ģ��ͻ���״̬
	
	//����ͻ�����  ��ѯ��һ�ͻ�������Ϣ
	public ClientVO showOneClient(ClientVO c);
	
	//����ͻ�����  �����ͻ�
	public boolean addNewClient(ClientVO c);
	
	//����ͻ�����  �޸Ŀͻ���Ϣ
	public boolean changeClient(ClientVO c);
	
	//�����û�����  ��ȡ�������пͻ���Ϣ
	public List<ClientVO> showOwnerClient(UserVO u);
	
}

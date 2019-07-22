package com.service.client;

import java.util.List;

import com.vo.ClientVO;
import com.vo.UserVO;

public interface ClientService {
	//����ͻ�����  ��ѯ��һ�ͻ�������Ϣ
	public ClientVO showOneClient(ClientVO c);
	
	//��ѯ��¼Ա�������пͻ�
	public List<ClientVO> showAllClient(UserVO user);
	
	//¼�������û���Ϣ
	public boolean addClient(ClientVO c,String clocation,String cuid); 
		
	//�޸���Ϣ
	public boolean changeClient(ClientVO c,String clocation);
}

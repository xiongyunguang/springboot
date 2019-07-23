package com.service.client.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.client.ClientDao;
import com.service.client.ClientService;
import com.vo.AddressVO;
import com.vo.ClientVO;
import com.vo.UserVO;

@Service
public class ClientServiceImpl implements ClientService{
	
	@Autowired
	public ClientDao clientDao;

	@Override
	public ClientVO showOneClient(ClientVO c) {
		
		return clientDao.showOneClient(c);
	}


	@Override
	public List<ClientVO> showAllClient(UserVO user) {
		
		return clientDao.showOwnerClient(user);
	}


	@Override
	public boolean addClient(ClientVO c,String clocation,UserVO cuid) {
		//��ǰ�˴���ĵ�����id(�ַ�������)�󶨵�client������
		AddressVO a=new AddressVO();
		a.setAid(Integer.parseInt(clocation));
		
	
		c.setClocation(a);
		c.setUserid(cuid);
		
		return clientDao.addNewClient(c);
	}


	@Override
	public boolean changeClient(ClientVO c,String clocation){
		AddressVO a=new AddressVO();
		if(clocation!=null) {
			a.setAid(Integer.parseInt(clocation));
			c.setClocation(a);
		}
		return clientDao.changeClient(c);
	}
	
}

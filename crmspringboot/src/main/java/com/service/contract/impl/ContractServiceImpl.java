package com.service.contract.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.contract.ContractDao;
import com.service.client.ClientService;
import com.service.contract.ContractService;
import com.vo.ClientVO;
import com.vo.ContractVO;
import com.vo.UserVO;

@Service
public class ContractServiceImpl implements ContractService {
	
	@Autowired
	private ContractDao contractDao;
	@Autowired
	private ClientService clientService;
	
	@Override
	public String addNewContract(ContractVO con) {
		boolean i=contractDao.addNewContract(con);
		String back="";
		if(i) {
			back="添加成功！";
			ClientVO client=clientService.showOneClient(con.getConclient());
			if(client.getCstate()==0) {
				client.setCstate(1);
			}else if(client.getCstate()==1) {
				client.setCstate(2);
			}
			clientService.changeClient(client, null);
		}else {
			back="添加失败！";
		}
		return back;
	}
	
	@Override
	public ContractVO showOneContract(ContractVO c) {	
		return contractDao.showOneContract(c);
	}


	@Override
	public String changeContract(ContractVO c) {
		boolean i=contractDao.changeContract(c);
		String back="";
		if(i) {
			back="修改成功！";
		}else {
			back="修改失败！";
		}
		return back;
	}

	@Override
	public List<ContractVO> showOwnerContract(UserVO u) {
		return contractDao.showOwnerContract(u);
	}

	@Override
	public List<ContractVO> showCidContract(ClientVO c) {
		return contractDao.showCidContract(c);
	}
}

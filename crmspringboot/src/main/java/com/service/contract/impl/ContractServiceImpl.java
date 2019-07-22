package com.service.contract.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.contract.ContractDao;
import com.service.contract.ContractService;
import com.vo.ClientVO;
import com.vo.ContractVO;
import com.vo.UserVO;

@Service
public class ContractServiceImpl implements ContractService {
	
	@Autowired
	public ContractDao contractDao;

	@Override
	public String addNewContract(ContractVO c) {
		boolean i=contractDao.addNewContract(c);
		String back="";
		if(i) {
			back="添加成功！";
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

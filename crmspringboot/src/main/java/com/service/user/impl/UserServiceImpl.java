package com.service.user.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.user.UserDao;
import com.service.user.UserService;
import com.vo.ClientVO;
import com.vo.ContractVO;
import com.vo.JobVO;
import com.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	public UserDao userDao;

	public UserVO showUser(UserVO u) {
		UserVO  vo = userDao.showUser(u);
		//安全处理
		vo.setUpassword("");
		return vo;
	}
			
	@Override
	public UserVO showOneUser(UserVO u) {
		UserVO  vo = userDao.showOneUser(u);
		//安全处理
		vo.setUpassword("");
		return vo;
	}

	@Override
	public List<UserVO> showOwnerUser(UserVO u) {
		List<UserVO>  list = new ArrayList<UserVO>();
		list = userDao.showOwnerUser(u);
		return list;
	}

	@Override
	public boolean changeUType(UserVO u) {
		boolean  boo=userDao.changeUType(u);
		return boo;
	}

	@Override
	public boolean changeOwnerClient(UserVO old, UserVO news) {
		// TODO Auto-generated method stub
		boolean boo=userDao.changeOwnerClient(old, news);
		return boo;
	}

	@Override
	public List<ContractVO> showAllContract(UserVO u) {
		// TODO Auto-generated method stub
		List<ContractVO> list = userDao.showAllContract(u);
		return list;
	}

	@Override
	public List<JobVO> showAllJob(UserVO u) {
		// TODO Auto-generated method stub
		List<JobVO> list = userDao.showAllJob(u);
		return list;
	}

	@Override
	public List<ClientVO> showAllclient(UserVO u) {
		List<ClientVO> list=userDao.showAllclient(u);
		return list;
	}

}

package com.dao.user;

import java.util.List;

import com.vo.ClientVO;
import com.vo.ContractVO;
import com.vo.JobVO;
import com.vo.UserVO;

public interface UserDao {
	
	//传入用户对象根据用户名   密码     返回数据库中对应的用户数据
	public UserVO showUser(UserVO u);
	
	//传入用户对象根据用户id 返回数据库中对应的用户数据
	public UserVO showOneUser(UserVO u);
	
	//传入用户对象(经理) 查询所管理用户(员工)
	public List<UserVO> showOwnerUser(UserVO u);
	
	//传入用户对象 修改员工的在职状态  
	public boolean changeUType(UserVO u);
	
	//传入两个用户对象   进行客户的交接(修改客户表的所属员工id)
	public boolean changeOwnerClient(UserVO old,UserVO news);
		
	//传入用户对象(经理)  查看所管理的所有合同
	public List<ContractVO> showAllContract(UserVO u);
	
	//传入用户对象(经理)  查看所管理的所有工作
	public List<JobVO> showAllJob(UserVO u);
	
	//传入用户对象(经理)  查看所管理的所有客户
	public List<ClientVO> showAllclient(UserVO u);
}

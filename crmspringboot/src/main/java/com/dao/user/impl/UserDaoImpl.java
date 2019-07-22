package com.dao.user.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.dao.user.UserDao;
import com.vo.ClientVO;
import com.vo.ContractVO;
import com.vo.JobVO;
import com.vo.UserVO;

@Repository
public class UserDaoImpl extends SqlSessionDaoSupport implements UserDao {

	@Autowired
	public void init(SqlSessionTemplate sqlSessionTemplate) {
		super.setSqlSessionTemplate(sqlSessionTemplate);
	}
	
	//传入用户对象根据用户id    返回数据库中对应的用户数据
	@Override
	public UserVO showOneUser(UserVO u) {
		// TODO Auto-generated method stub
		UserVO  uvo=this.getSqlSessionTemplate().selectOne("showOneUser", u);		
		return uvo;
	}
	
	//传入用户对象(经理)     查询所管理用户(员工)
	@Override
	public List<UserVO> showOwnerUser(UserVO u) {
		// TODO Auto-generated method stub
		List<UserVO>  list = this.getSqlSessionTemplate().selectList("showOwnerUser", u);		
		return  list;
	}
	
	//传入用户对象    修9改员工的在职状态  
	@Override
	public boolean changeUType(UserVO u) {
		// TODO Auto-generated method stub
		int i = this.getSqlSessionTemplate().update("changeUType",u);
		
		boolean  boo = false;
		if(i>=1) {
			boo=true;
		}
		return boo;
	}
	
	//传入两个用户对象          进行客户的交接(修改客户表的所属员工id)
	@Override
	public boolean changeOwnerClient(UserVO old, UserVO news) {
		// TODO Auto-generated method stub
		UserVO   uvo = new  UserVO();
		uvo.setUid(old.getUid());
		uvo.setUowner(news.getUowner());
		
		Map<String,Integer>  map = new  HashMap<String,Integer>();
		map.put("old", old.getUid());
		map.put("news",news.getUid());
		int i=this.getSqlSessionTemplate().update("changeOwnerClient", map);
		boolean  boo=false;
		if(i>=1) {
			boo=true;
		}
		return boo;
	}
	
	//传入用户对象(经理)    查看所管理的所有合同
	@Override
	public List<ContractVO> showAllContract(UserVO u) {	
		List<ContractVO> list=this.getSqlSessionTemplate().selectList("showAllContract",u);
		return list;
	}
	
	//传入用户对象(经理)    查看所管理的所有工作
	@Override
	public List<JobVO> showAllJob(UserVO u) {
		// TODO Auto-generated method stub
		List<JobVO>  list=this.getSqlSessionTemplate().selectList("showAllJob", u);
		return list;
	}

	@Override
	public List<ClientVO> showAllclient(UserVO u) {
		// TODO Auto-generated method stub
		List<ClientVO>  list=this.getSqlSessionTemplate().selectList("showAllclient", u);
		return list;
	}

	@Override//用户登录
	public UserVO showUser(UserVO u) {
		UserVO  uvo=this.getSqlSessionTemplate().selectOne("showUser", u);		
		return uvo;
	}

}

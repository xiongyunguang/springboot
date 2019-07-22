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
	
	//�����û���������û�id    �������ݿ��ж�Ӧ���û�����
	@Override
	public UserVO showOneUser(UserVO u) {
		// TODO Auto-generated method stub
		UserVO  uvo=this.getSqlSessionTemplate().selectOne("showOneUser", u);		
		return uvo;
	}
	
	//�����û�����(����)     ��ѯ�������û�(Ա��)
	@Override
	public List<UserVO> showOwnerUser(UserVO u) {
		// TODO Auto-generated method stub
		List<UserVO>  list = this.getSqlSessionTemplate().selectList("showOwnerUser", u);		
		return  list;
	}
	
	//�����û�����    ��9��Ա������ְ״̬  
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
	
	//���������û�����          ���пͻ��Ľ���(�޸Ŀͻ��������Ա��id)
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
	
	//�����û�����(����)    �鿴����������к�ͬ
	@Override
	public List<ContractVO> showAllContract(UserVO u) {	
		List<ContractVO> list=this.getSqlSessionTemplate().selectList("showAllContract",u);
		return list;
	}
	
	//�����û�����(����)    �鿴����������й���
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

	@Override//�û���¼
	public UserVO showUser(UserVO u) {
		UserVO  uvo=this.getSqlSessionTemplate().selectOne("showUser", u);		
		return uvo;
	}

}

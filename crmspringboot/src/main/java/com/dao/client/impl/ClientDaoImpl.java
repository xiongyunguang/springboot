package com.dao.client.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dao.client.ClientDao;
import com.vo.ClientVO;
import com.vo.UserVO;

@Component
public class ClientDaoImpl extends SqlSessionDaoSupport implements ClientDao{
	
	@Autowired
	public void init(SqlSessionTemplate sqlSessionTemplate) {
		super.setSqlSessionTemplate(sqlSessionTemplate);
	}
	
	//����ͻ�����  ��ѯ��һ�ͻ�������Ϣ
	@Override
	public ClientVO showOneClient(ClientVO c) {
		ClientVO news = this.getSqlSessionTemplate().selectOne("showOneClient",c);
		return news;
	}

	@Override
	public boolean addNewClient(ClientVO c) {
		boolean b=false;
		int i=0;
		i=this.getSqlSessionTemplate().insert("addNewClient", c);
		if(i>0) {
			b=true;
		}
		return b;
	}

	@Override
	public boolean changeClient(ClientVO c) {
		boolean b=false;
		int i=0;
		i=this.getSqlSessionTemplate().update("changeClient", c);
		if(i>0) {
			b=true;
		}
		return b;
	}

	@Override
	public List<ClientVO> showOwnerClient(UserVO u) {
		List<ClientVO> clientList = this.getSqlSessionTemplate().selectList("showAllClient", u);
		return clientList;
	}

}

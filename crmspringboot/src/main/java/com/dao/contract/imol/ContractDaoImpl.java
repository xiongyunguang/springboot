package com.dao.contract.imol;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dao.contract.ContractDao;
import com.vo.ClientVO;
import com.vo.ContractVO;
import com.vo.UserVO;

@Component
public class ContractDaoImpl extends SqlSessionDaoSupport implements ContractDao {

	@Autowired
	public void init(SqlSessionTemplate sqlSessionTemplate) {
		super.setSqlSessionTemplate(sqlSessionTemplate);
	}
	
	@Override
	public boolean addNewContract(ContractVO c) {
		int i=this.getSqlSessionTemplate().insert("addNewContract", c);
		if(i>0) {
			return true;
		}
		return false;
	}

	
	//�����ͬ����  ��ȡ�ú�ͬ
	@Override
	public ContractVO showOneContract(ContractVO c) {
		ContractVO news = new ContractVO();
		news = this.getSqlSessionTemplate().selectOne("showOneContract",c);
		return news;
	}

	@Override
	public boolean changeContract(ContractVO c) {
		int i=this.getSqlSessionTemplate().update("changeContract", c);
		if(i>0) {
			return true;
		}
		return false;
	}

	@Override
	public List<ContractVO> showOwnerContract(UserVO u) {
		List<ContractVO> list=this.getSqlSessionTemplate().selectList("showOwnerContract", u);
		return list;
	}


	@Override
	public List<ContractVO> showCidContract(ClientVO c) {
		List<ContractVO> list=this.getSqlSessionTemplate().selectList("showCidContract", c);
		return list;
	}
}

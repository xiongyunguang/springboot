package com.dao.job.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dao.job.JobDao;
import com.vo.JobVO;
import com.vo.UserVO;

@Component
public class JobDaoImpl extends SqlSessionDaoSupport implements JobDao {
	
	@Autowired
	public void init(SqlSessionTemplate sqlSessionTemplate) {
		super.setSqlSessionTemplate(sqlSessionTemplate);
	}
	
	@Override
	public boolean addNewJob(JobVO j) {
		boolean flag = false;
		if(this.getSqlSessionTemplate().insert("addNewJob",j)>0) {
			flag = true;
		}
		return flag;
	}

	@Override
	public boolean changeJob(JobVO j) {
		boolean flag = false;
		if(this.getSqlSessionTemplate().update("changeJob", j)>0) {
			flag = true;
		}
		return flag;
	}

	@Override
	public JobVO showOneJob(JobVO j) {
		return this.getSqlSessionTemplate().selectOne("showOneJob",j);
	}

	@Override
	public List<JobVO> showOwnerJob(UserVO u) {
		return this.getSqlSessionTemplate().selectList("showOwnerJob", u);
	}

}

package com.service.job.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.job.JobDao;
import com.service.job.JobService;
import com.vo.JobVO;
import com.vo.UserVO;

@Service
public class JobServiceImpl implements JobService{
	
	@Autowired
	public JobDao jobDao ;
	
	@Override
	public JobVO showOneJob(JobVO j) {
		return jobDao.showOneJob(j);
	}

	@Override
	public List<JobVO> showOwnerJob(UserVO u) {
		return jobDao.showOwnerJob(u);
	}

	@Override
	public boolean addNewJob(JobVO j) {
		return jobDao.addNewJob(j);
	}

	@Override
	public boolean changeJob(JobVO j) {
		return jobDao.changeJob(j);
	}
	
	
	
}

package com.service.job;

import java.util.List;

import com.vo.JobVO;
import com.vo.UserVO;

public interface JobService {
	    //���빤������  ��ȡ�ù���
		public JobVO showOneJob(JobVO j);
		
		//�����û�����  ��ȡ���û������й���
		public List<JobVO> showOwnerJob(UserVO u);
		
		//���빤������  ����µĹ���
		public boolean addNewJob(JobVO j);
		
		//���빤������  ���¸ù���
		public boolean changeJob(JobVO j);
}

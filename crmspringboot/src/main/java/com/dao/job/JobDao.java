package com.dao.job;

import java.util.List;

import com.vo.JobVO;
import com.vo.UserVO;

public interface JobDao {
//	  |-������
//  |-�鿴��ֻ�ܲ鿴���Լ��Ĺ�������
//  |-�޸ģ������й������ŵ����״̬�޸�
	
	//���빤������  ����µĹ���
	public boolean addNewJob(JobVO j);
	
	//���빤������  �޸Ĺ�����Ϣ
	public boolean changeJob(JobVO j);
	
	//���빤������  ��ȡ�ù���
	public JobVO showOneJob(JobVO j);
	
	//�����û�����  ��ȡ�����й���
	public List<JobVO> showOwnerJob(UserVO u);
	
}

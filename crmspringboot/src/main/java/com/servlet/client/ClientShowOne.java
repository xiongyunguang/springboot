package com.servlet.client;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.service.client.ClientService;
import com.vo.ClientVO;

@Controller
public class ClientShowOne {
	
	@Autowired
	private ClientService clientService;
	
	public static Logger log=LogManager.getLogger();

	@RequestMapping("/showOneClient")
	public ModelAndView showOneClient(Integer cid,String option){
		
		ModelAndView modelView=new ModelAndView();
		
		ClientVO client =new ClientVO();
		client.setCid(cid);
		
		ClientVO clientOne=clientService.showOneClient(client);
		
		if("1".equals(option)) {
			//��ô�findclient.jsp�������Ҫ�޸ĵĿͻ�id
			
			modelView.addObject("clientOne", clientOne);
			
			modelView.setViewName("/updateclient.jsp");
		}else if("2".equals(option)) {
			//��ô�findclient.jsp�������Ҫ�鿴��ϸ��Ϣ�Ŀͻ�id
			
			modelView.addObject("clientOneInfo", clientOne);
			
			modelView.setViewName("/showclientinfo.jsp");
		}else {
			modelView.setViewName("/addclienterror.jsp");
		}
		
		return modelView;
	}

}

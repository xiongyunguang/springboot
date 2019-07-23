package com.servlet.client;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.service.client.ClientService;
import com.vo.ClientVO;
import com.vo.UserVO;

@Controller
public class ClientAdd {
	@Autowired
	private ClientService clientService;
	
	private static Logger log=LogManager.getLogger();

	@RequestMapping("/addClient")
	public ModelAndView addClient(HttpServletRequest request,ClientVO c,String location) {
		
		ModelAndView modelView=new ModelAndView();
		
		UserVO cuid=(UserVO) request.getSession().getAttribute("user");
		
		boolean b=clientService.addClient(c,location,cuid);
		
		if (b) {
			modelView.setViewName("forward:/showAllClient");
		} else {
			modelView.setViewName("/addclienterror.jsp");
		}
		
		return modelView;
	}

}

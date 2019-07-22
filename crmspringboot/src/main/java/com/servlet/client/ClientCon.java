package com.servlet.client;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.service.client.ClientService;
import com.vo.ClientVO;

public class ClientCon implements Controller{
	
	private ClientService clientService;

	public void setClientService(ClientService clientService) {
		this.clientService = clientService;
	}


	@Override
	public ModelAndView handleRequest(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
		
		ModelAndView modelAndView = new ModelAndView();
		
		ClientVO c = new ClientVO();
		c.setCid(1);
		
		c = clientService.showOneClient(c);
		
		System.out.println("****************"+c.getCcontext()+c.getClocation().getApro()+c.getUserid().getUname());
		
		return modelAndView;
	}

}

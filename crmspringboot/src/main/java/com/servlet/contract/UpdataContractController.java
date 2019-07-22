package com.servlet.contract;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.service.contract.ContractService;

@Controller
public class UpdataContractController{
	
	@Autowired
	private ContractService contractService;

	@RequestMapping("/updataContractController")
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ModelAndView modelAndView=new ModelAndView();
		
		return modelAndView;
	}

}

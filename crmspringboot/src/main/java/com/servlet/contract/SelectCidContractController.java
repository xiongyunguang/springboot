package com.servlet.contract;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.service.contract.ContractService;
import com.vo.ClientVO;
import com.vo.ContractVO;

@Controller
@SessionAttributes("cidlist")
public class SelectCidContractController{
	
	@Autowired
	private ContractService contractService;
	
	@RequestMapping("/selectCidContractController")
	public ModelAndView handleRequest(String conclient){
		ModelAndView modelAndView = new ModelAndView();
		
		ClientVO c=new ClientVO();
		c.setCid(1);		
		
		List<ContractVO> list= contractService.showCidContract(c);
		modelAndView.addObject("cidlist",list);
		return modelAndView;
	}
}

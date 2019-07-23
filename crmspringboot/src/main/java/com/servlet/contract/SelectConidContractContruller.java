package com.servlet.contract;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.service.contract.ContractService;
import com.vo.ContractVO;

@Controller
@SessionAttributes("updataContractVO")
public class SelectConidContractContruller{
	
	@Autowired
	private ContractService contractService;

	@RequestMapping("/selectConidContractController")
	public ModelAndView handleRequest(String conid){
		ModelAndView modelAndView=new ModelAndView();
		ContractVO con=new ContractVO();
		con.setConid(Integer.parseInt(conid));
		ContractVO contract=contractService.showOneContract(con);
		modelAndView.addObject("updataContractVO",contract);
		modelAndView.setViewName("updatacontract.jsp");
		return modelAndView;
	}

}

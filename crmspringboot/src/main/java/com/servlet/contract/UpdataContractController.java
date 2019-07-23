package com.servlet.contract;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.service.contract.ContractService;
import com.vo.ContractVO;

@Controller
public class UpdataContractController{
	
	@Autowired
	private ContractService contractService;

	@RequestMapping("/updataContractController")
	public ModelAndView handleRequest(String conid,String condate,String constatus){
		ModelAndView modelAndView=new ModelAndView();
		
		ContractVO con=new ContractVO();
		con.setConid(Integer.parseInt(conid));
		//转换时间格式
		Date date=Date.valueOf(condate);
		con.setCondate(date);
		con.setConstatus(Integer.valueOf(constatus));
		String back=contractService.changeContract(con);
		if("修改成功！".equals(back)) {
			modelAndView.setViewName("forward:/selectUidContractController");
		}else {
			modelAndView.setViewName("updatacontracterror.jsp");
		}
		return modelAndView;
	}

}

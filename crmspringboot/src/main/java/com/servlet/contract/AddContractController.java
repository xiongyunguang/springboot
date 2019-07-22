package com.servlet.contract;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.service.contract.ContractService;
import com.vo.ClientVO;
import com.vo.ContractVO;
import com.vo.UserVO;

@Controller
public class AddContractController{
	
	@Autowired
	private ContractService contractService;
	
	@RequestMapping("/addContractController")
	public ModelAndView handleRequest(String conimg,
			String contitle,String condetails,String condate,
			String constatus,String conclient,String conuser){

		ModelAndView modelAndView = new ModelAndView();
		//设置ContractVO对象值
		ContractVO con=new ContractVO();
		con.setConimg(conimg);
		con.setContitle(contitle);
		con.setCondetails(condetails);
		//转换时间格式
		Date date=Date.valueOf(condate);
		con.setCondate(date);
		con.setConstatus(Integer.valueOf(constatus));
		
		ClientVO client=new ClientVO();
		client.setCid(Integer.valueOf(conclient));
		con.setConclient(client);
		
		UserVO user=new UserVO();
		user.setUid(Integer.valueOf(conuser));
		con.setConuser(user);
		
		String back=contractService.addNewContract(con);
		if("添加成功！".equals(back)) {
			modelAndView.setViewName("forward:/selectUidContractController");
		}else {
			modelAndView.setViewName("addcontract.jsp");
		}
		return modelAndView;
	}
}

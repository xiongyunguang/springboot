package com.servlet.contract;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.service.contract.ContractService;
import com.vo.ContractVO;
import com.vo.UserVO;

@Controller
@SessionAttributes("listContract")
public class SelectUidContractController{
	
	@Autowired
	private ContractService contractService;

	@RequestMapping("/selectUidContractController")
	public ModelAndView handleRequest(HttpServletRequest arg0){
		UserVO user=(UserVO)arg0.getSession().getAttribute("user");
//		UserVO user=new UserVO();
//		user.setUid(1);
//		user.setUpost(1);
		List<ContractVO> list=contractService.showOwnerContract(user);
		
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("listContract",list);
		modelAndView.setViewName("findcontract.jsp");
		return modelAndView;
	}
	
	
}

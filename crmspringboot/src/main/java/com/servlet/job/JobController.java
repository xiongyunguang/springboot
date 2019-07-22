package com.servlet.job;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.service.client.ClientService;
import com.service.job.JobService;
import com.vo.ClientVO;
import com.vo.JobVO;
import com.vo.UserVO;

@Controller
public class JobController {
	@Autowired
	public JobService jobService;
	
	@Autowired
	public ClientService clientService;
	
	public static Logger log = LogManager.getLogger();
	
	@RequestMapping("/showOwnerJob")
	public ModelAndView showOwnerJob(HttpServletRequest arg0) {
		ModelAndView modelAndView = new ModelAndView();

		// 判断用户是否登录
		UserVO user = (UserVO) arg0.getSession().getAttribute("user");

		// 模拟用户是否登录
		/*
		 * UserVO user = new UserVO(); user.setUid(3);
		 */

		if (user != null) {
			List<JobVO> jlist = jobService.showOwnerJob(user);
			// arg0.setAttribute("jlist", jlist);

			modelAndView.addObject("jlist", jlist);
			modelAndView.setViewName("chakangongzuo.jsp");
		} else {
			modelAndView.setViewName("login.jsp");
		}
		return modelAndView;
	}
	
	@RequestMapping("/addJobshow")
	public ModelAndView addJobshow(HttpServletRequest arg0) {
		ModelAndView modelAndView = new ModelAndView();

		// 判断用户是否登录
		UserVO user = (UserVO) arg0.getSession().getAttribute("user");

		// 模拟用户是否登录
		/*
		 * UserVO user = new UserVO(); user.setUid(3);
		 */

		if (user != null) {
			List<ClientVO> jclist = clientService.showAllClient(user);
			modelAndView.addObject("jclist", jclist);
			modelAndView.setViewName("xinzenggongzuoanpai.jsp");
		} else {
			modelAndView.setViewName("login.jsp");
		}
		return modelAndView;
	}
	
	@RequestMapping("/addOwnerJob")
	public ModelAndView addOwnerJob(
			@RequestParam("jtitle") String jtitle,
			@RequestParam("jcontent") String jcontent,
			@RequestParam("jtarget") int jtarget,
			@RequestParam("jdate") String jdate,
			HttpServletRequest arg0
	) {	
		ModelAndView modelAndView = new ModelAndView();

		// 判断用户是否登录
		UserVO user = (UserVO) arg0.getSession().getAttribute("user");

		// 模拟用户是否登录
		/*
		 * UserVO user = new UserVO(); user.setUid(3);
		 */

		if (user != null) {
			JobVO j = new JobVO();
			j.setJtitle(jtitle);
			
			j.setJdate(Date.valueOf(jdate));
			j.setJcontent(jcontent);
			ClientVO c = new ClientVO();
			c.setCid(jtarget);
			j.setJtarget(c);
			j.setJtype(1);
			j.setJuser(user);

			boolean flag = jobService.addNewJob(j);
			if (flag) {
				modelAndView.setViewName("redirect:showOwnerJob");
			} else {
				modelAndView.setViewName("error.jsp");
			}
		} else {
			modelAndView.setViewName("login.jsp");
		}
		return modelAndView;
	}
	
	@RequestMapping("/changeJobShow")
	public ModelAndView changeJobShow(@RequestParam("jid") int jid,HttpServletRequest arg0) {
		ModelAndView modelAndView = new ModelAndView();

		// 判断用户是否登录
		UserVO user = (UserVO) arg0.getSession().getAttribute("user");

		// 模拟用户是否登录
		/*
		 * UserVO user = new UserVO(); user.setUid(3);
		 */

		if (user != null) {
			JobVO onejob = new JobVO();
			onejob.setJid(jid);
			// 写死 要修改的工作 5或8  之后删除
			//onejob.setJid(5);
			modelAndView.addObject("onejob", jobService.showOneJob(onejob));
			modelAndView.setViewName("xiugaigongzuoanpai.jsp");
		} else {
			modelAndView.setViewName("login.jsp");
		}
		return modelAndView;
	}
	
	@RequestMapping("/changeJob")
	public ModelAndView changeJob(
			@RequestParam("jtitle") String jtitle,
			@RequestParam("jcontent") String jcontent,
			@RequestParam("jid") int jid,
			@RequestParam("jtype") int jtype,
			@RequestParam("jdate") String jdate,
			HttpServletRequest arg0
	) {	
		ModelAndView modelAndView = new ModelAndView();
		
		//判断用户是否登录  后续释放
		UserVO user = (UserVO) arg0.getSession().getAttribute("user");
		
		//模拟用户是否登录  后续删除
		/*
		 * UserVO user = new UserVO(); user.setUid(3);
		 */
								
		if(user!=null) {
			JobVO j =new JobVO();
			j.setJid(jid);
			//j.setJid(3);//先默认设置  后续删除
			j.setJtitle(jtitle);
			j.setJdate(Date.valueOf(jdate));
			j.setJcontent(jcontent);
			j.setJtype(jtype);
			
			if(jobService.changeJob(j)) {
				modelAndView.setViewName("showOwnerJob");
			}else {
				modelAndView.setViewName("error.jsp");
			}					  
		}else {
			modelAndView.setViewName("login.jsp");
		}		
		return modelAndView;
	}
	
}

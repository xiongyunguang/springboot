package com.conf;

import java.util.Properties;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.handler.SimpleMappingExceptionResolver;

@Configuration
public class WebExceptionConfig {
	
	@Bean
	@Autowired
	public HandlerExceptionResolver exceptionResolver(Properties properties) {
		SimpleMappingExceptionResolver exceptionResolver
			= new SimpleMappingExceptionResolver();
		
		exceptionResolver.setDefaultErrorView("/WEB-INF/errorview/error.jsp");
		
		exceptionResolver.setExceptionAttribute("ex");
		
		exceptionResolver.setExceptionMappings(properties);

		return exceptionResolver;
	}
	
	@Bean
	public Properties properties() {
		Properties properties
			= new Properties();
		properties.put("com.mybatis.cust.exception.CustException", "/WEB-INF/errorview/error.jsp");	
		return properties;
	}
	
}

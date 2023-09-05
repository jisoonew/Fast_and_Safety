package com.fs.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	//메인 페이지 이동
	@RequestMapping(value = "/main_logino",  method = RequestMethod.GET)
	public void mainLoginoGET() {
		
		logger.info("메인 페이지 진입 (NOT LOGIN)");
		
	}
	
	//메인 페이지 이동
	@RequestMapping(value = "/main_login",  method = RequestMethod.GET)
	public void mainLoginGET() {
		
		logger.info("메인 페이지 진입 (LOGIN)");
	}
}
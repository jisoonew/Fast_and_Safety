package com.fs.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fs.service.UserService;
import com.fs.vo.UserVO;

@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	private UserService userservice;
	
	//메인 페이지 이동
	@RequestMapping(value = "/user",  method = RequestMethod.GET)
	public String mainLoginoGET() {
		
		logger.info("메인 페이지 진입 (NOT LOGIN)");
		
		return "user";
	}
	
	//메인 페이지 이동
	@RequestMapping(value = "/main_login",  method = RequestMethod.GET)
	public void mainLoginGET() {
		
		logger.info("메인 페이지 진입 (LOGIN)");
	}
	
}
package com.fs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fs.service.UserService;
import com.fs.vo.UserVO;

@Controller
public class MemberController {

	@Autowired
	private UserService userservice;
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String joinPOST(UserVO user) throws Exception{
		
		
		//log.info("join ����");
		
		// ȸ������ ���� ����
		userservice.userJoin(user);
		
		//log.info("ȸ������ ����");
		
		return "redirect:/login_home";
		
	}
}

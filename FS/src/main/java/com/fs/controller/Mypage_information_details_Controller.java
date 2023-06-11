package com.fs.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fs.service.Login_home_service;
import com.fs.service.Routine_delivery_service;
import com.fs.vo.Login_home_VO;
import com.fs.vo.Routine_delivery_VO;

@Controller
public class Mypage_information_details_Controller {
	@Inject
    private Login_home_service service;
	
    @RequestMapping(value = "/mypage_information_details", method = RequestMethod.GET)
    public void user(Model model) throws Exception{
    	List<Login_home_VO> user = null;
    	user = service.user();
    	model.addAttribute("user", user);
    }
}

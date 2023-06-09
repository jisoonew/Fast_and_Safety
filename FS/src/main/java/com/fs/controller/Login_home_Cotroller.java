package com.fs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fs.service.Login_home_service;
import com.fs.service.Today_delivery_service;
import com.fs.vo.Login_home_VO;
import com.fs.vo.Today_delivery_VO;

@Controller
public class Login_home_Cotroller {
	@Inject
    private Login_home_service service;
	
    @RequestMapping(value = "/mypage_information_details", method = RequestMethod.GET)
    public void user(Model model) throws Exception{
    	List<Login_home_VO> user = null;
    	user = service.user();
    	model.addAttribute("u_name", user);
    }
    
    
    @RequestMapping(value = "/login_home")
    public String get_home(Model model) throws Exception{
    	return "/login_home";
    }
}

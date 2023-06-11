package com.fs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fs.service.Routine_delivery_service;
import com.fs.vo.Routine_delivery_VO;

@Controller
public class Ask_answer_Controller {
	@Inject
    private Routine_delivery_service service;
	
    @RequestMapping(value = "/ask_answer")
    public String get_home(Model model) throws Exception{
    	return "/ask_answer";
    }
}

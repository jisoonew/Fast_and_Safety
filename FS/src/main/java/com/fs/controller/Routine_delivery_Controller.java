package com.fs.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fs.service.Today_delivery_service;
import com.fs.vo.Today_delivery_VO;

@Controller
public class Routine_delivery_Controller {
	
	@Inject
    private Today_delivery_service service;
	
	/*
	 * private static final Logger logger =
	 * LoggerFactory.getLogger(Today_delivery_Controller.class);
	 */
   
    @RequestMapping(value = "/routine_delivery", method = RequestMethod.GET)
    public void writeView() throws Exception{
    }
    
    
    @RequestMapping(value = "/routine_delivery", method = RequestMethod.POST)
    public String write(Today_delivery_VO vo) throws Exception{
    	service.write(vo);
    	return "/routine_delivery";
    }
}

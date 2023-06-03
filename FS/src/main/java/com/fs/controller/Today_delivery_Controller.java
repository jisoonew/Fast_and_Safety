package com.fs.controller;

import java.util.List;
import java.util.Locale;
import java.util.logging.Logger;

import javax.inject.Inject;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fs.dao.Today_delivery_DAO;
import com.fs.service.Today_delivery_service;
import com.fs.vo.Today_delivery_VO;
import com.mysql.cj.log.Log;

@Controller
public class Today_delivery_Controller {
	
	@Inject
    private Today_delivery_service service;
	
	/*
	 * private static final Logger logger =
	 * LoggerFactory.getLogger(Today_delivery_Controller.class);
	 */
   
    @RequestMapping(value = "/today_delivery", method = RequestMethod.GET)
    public void writeView() throws Exception{
    }
    
    
    @RequestMapping(value = "/today_delivery", method = RequestMethod.POST)
    public String write(Today_delivery_VO vo) throws Exception{
    	service.write(vo);
    	return "today_delivery";
    }
    

}

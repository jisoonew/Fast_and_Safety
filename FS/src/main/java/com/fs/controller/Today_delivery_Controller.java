package com.fs.controller;

import java.util.List;
import java.util.Locale;
import java.util.logging.Logger;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fs.dao.Today_delivery_DAO;
import com.fs.service.Today_delivery_service;
import com.fs.vo.Login_home_VO;
import com.fs.vo.Today_delivery_VO;
import com.fs.vo.kind_release_VO;
import com.mysql.cj.log.Log;

@Controller
public class Today_delivery_Controller {
	
	@Inject
    private Today_delivery_service service;
   
	// 당일 배송의 수령인 출력
    @RequestMapping(value = "/today_delivery", method = RequestMethod.GET)
    public void writeView(Model model) throws Exception{
    	List<Login_home_VO> user = null;
    	user = service.user();
    	model.addAttribute("user", user);
    	
    	
    	List<kind_release_VO> kind_release = null;
    	kind_release = service.kind_release();
    	model.addAttribute("kind_release", kind_release);
    }
    
    
    
    // today_delivery DB 삽입
    @RequestMapping(value = "/today_delivery", method = RequestMethod.POST)
    public String write(Today_delivery_VO vo, HttpServletRequest request) throws Exception{

    	service.write(vo);
    	return "redirect:/today_delivery";
    }
    
   
}

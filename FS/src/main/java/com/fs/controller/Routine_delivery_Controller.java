package com.fs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fs.service.Routine_delivery_service;
import com.fs.service.Today_delivery_service;
import com.fs.vo.Login_home_VO;
import com.fs.vo.Routine_delivery_VO;
import com.fs.vo.Today_delivery_VO;
import com.fs.vo.kind_release_VO;

@Controller
public class Routine_delivery_Controller {
	
	@Inject
    private Routine_delivery_service service;
   
	
	// 유저 상품 목록 출력
	 @RequestMapping(value = "/routine_delivery", method = RequestMethod.GET)
	 public void kind_release(Model model,Routine_delivery_VO vo) throws Exception{ 
	    	List<kind_release_VO> kind_release = null;
	    	kind_release = service.kind_release();
	    	model.addAttribute("kind_release", kind_release);
		 }
	
    
 // today_delivery DB 삽입
    @RequestMapping(value = "/routine_delivery", method = RequestMethod.POST)
    public String routine_delivery(Routine_delivery_VO vo, HttpServletRequest request) throws Exception{
    	service.routine_delivery(vo);
    	return "redirect:/routine_delivery";
    }
}

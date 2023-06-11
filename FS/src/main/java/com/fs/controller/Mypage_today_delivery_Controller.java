package com.fs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fs.service.Today_delivery_service;
import com.fs.vo.Today_delivery_VO;
import com.fs.vo.review_VO;

@Controller
public class Mypage_today_delivery_Controller {
	
	@Inject
    private Today_delivery_service service;
	
	// DB 내용 출력
    @RequestMapping(value = "/mypage_today_delivery", method = RequestMethod.GET)
    public void list(Model model) throws Exception{
    	List<Today_delivery_VO> list = null;
    	list = service.list();
    	model.addAttribute("list", list);
    	
    	List<Today_delivery_VO> delivery_sum = null;
    	delivery_sum = service.delivery_sum();
    	model.addAttribute("delivery_sum", delivery_sum);
    }
    
    // today_delivery DB 삽입
    @RequestMapping(value = "/mypage_today_delivery", method = RequestMethod.POST)
    public String selectsearch(review_VO vo, HttpServletRequest request) throws Exception{

    	service.selectsearch(vo);
    	return "/mypage_today_delivery";
    }
}

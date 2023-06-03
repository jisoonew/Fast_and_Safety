package com.fs.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fs.service.Today_delivery_service;
import com.fs.vo.Today_delivery_VO;

@Controller
public class Mypage_today_delivery {
	
	@Inject
    private Today_delivery_service service;
	
    @RequestMapping(value = "/mypage_today_delivery", method = RequestMethod.GET)
    public void list(Model model) throws Exception{
    	List<Today_delivery_VO> list = null;
    	list = service.list();
    	model.addAttribute("list", list);
    }
}

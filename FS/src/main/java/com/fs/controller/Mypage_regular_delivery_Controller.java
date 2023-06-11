package com.fs.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fs.service.Routine_delivery_service;
import com.fs.service.Today_delivery_service;
import com.fs.vo.Routine_delivery_VO;
import com.fs.vo.Today_delivery_VO;

@Controller
public class Mypage_regular_delivery_Controller {
	@Inject
    private Routine_delivery_service service;
	
	// DB 내용 출력
    @RequestMapping(value = "/mypage_regular_delivery", method = RequestMethod.GET)
    public void list(Model model) throws Exception{
    	List<Routine_delivery_VO> list = null;
    	list = service.routine_delivery_print();
    	model.addAttribute("routine", list);
    }
}

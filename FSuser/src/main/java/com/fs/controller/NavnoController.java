package com.fs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping(value = "/navbar_no")
@Log4j
public class NavnoController {
	
	//회사소개 - 비로그인 페이지 이동
	@RequestMapping(value = "introduce", method = RequestMethod.GET)
	public void introduceNGET() {
		
		//log.info("회사소개 - 비로그인 페이지 진입");
		
	}
	
	//서비스 - 보관품목 및 유의사항 - 비로그인 페이지 이동
	@RequestMapping(value = "product_storage", method = RequestMethod.GET)
	public void product_storageNGET() {
		
		//log.info("서비스 -보관품목 및 유의사항 -비로그인 페이지 진입");
		
	}
	
	//서비스 - 입출고 절차 -비로그인 페이지 이동
	@RequestMapping(value = "service_step", method = RequestMethod.GET)
	public void service_stepNGET() {
		
		//log.info("서비스 - 입출고 절차 -비로그인 페이지 진입");
		
	}
	
	//문의 -비로그인 페이지 이동
	@RequestMapping(value = "inquiry", method = RequestMethod.GET)
	public void inquiryNGET() {
		
		//log.info("문의 -비로그인 페이지 진입");
		
	}

}
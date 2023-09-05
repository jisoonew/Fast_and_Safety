package com.fs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fs.service.Login_home_service;
import com.fs.service.Routine_delivery_service;
import com.fs.service.Today_delivery_service;
import com.fs.vo.Login_home_VO;
import com.fs.vo.Routine_delivery_VO;
import com.fs.vo.Today_delivery_VO;
import com.fs.vo.review_VO;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping(value = "/mypage")
@Log4j
public class MypageController {
	
	@Inject
    private Login_home_service service;
	
	@Inject
    private Routine_delivery_service RDservice;
	
	@Inject
    private Today_delivery_service TDservice;
	
	//마이페이지 - 당일 배송
	/*
	@RequestMapping(value = "/today_delivery",  method = RequestMethod.GET)
	public void MPtoday_deliveryGET() {
		
		//logger.info("메인 페이지 진입 (NOT LOGIN)");
		
	}
	*/
	
	// DB 내용 출력
    @RequestMapping(value = "today_delivery", method = RequestMethod.GET)
    public void TDlist(Model model) throws Exception{
    	List<Today_delivery_VO> list = null;
    	list = TDservice.list();
    	model.addAttribute("list", list);
    	
    	List<Today_delivery_VO> delivery_sum = null;
    	delivery_sum = TDservice.delivery_sum();
    	model.addAttribute("delivery_sum", delivery_sum);
    }
    
    // today_delivery DB 삽입
    @RequestMapping(value = "today_delivery", method = RequestMethod.POST)
    public String selectsearch(review_VO vo, HttpServletRequest request) throws Exception{

    	TDservice.selectsearch(vo);
    	return "/mypage/today_delivery";
    }
	
	//마이페이지 - 정기 배송
	/*
	@RequestMapping(value = "/regular_delivery",  method = RequestMethod.GET)
	public void MPregular_deliveryGET() {
		
		//logger.info("메인 페이지 진입 (NOT LOGIN)");
		
	}
	*/
	
	// DB 내용 출력
    @RequestMapping(value = "/mypage/regular_delivery", method = RequestMethod.GET)
    public void RDlist(Model model) throws Exception{
    	List<Routine_delivery_VO> list = null;
    	list = RDservice.routine_delivery_print();
    	model.addAttribute("routine", list);
    }
	
	//마이페이지 - 예약 배송
	@RequestMapping(value = "/reserve_delivery",  method = RequestMethod.GET)
	public void MPreserve_deliveryGET() {
		
		//logger.info("메인 페이지 진입 (NOT LOGIN)");
		
	}
	
	//회원 정보
	@RequestMapping(value = "/storage",  method = RequestMethod.GET)
	public void MPstorageGET() {
		
		//logger.info("메인 페이지 진입 (NOT LOGIN)");
		
	}
	
	//회원 정보
	
	/*
	@RequestMapping(value = "/information_details",  method = RequestMethod.GET)
	public void information_detailsGET() {
		
		//logger.info("메인 페이지 진입 (NOT LOGIN)");
		
	}
	*/
	
    @RequestMapping(value = "/information_details", method = RequestMethod.GET)
    public void user(Model model) throws Exception{
    	List<Login_home_VO> user = null;
    	user = service.user();
    	model.addAttribute("user", user);
    }
	
	//결제 방법
	@RequestMapping(value = "/pay",  method = RequestMethod.GET)
	public void MPpayGET() {
		
		//logger.info("메인 페이지 진입 (NOT LOGIN)");
		
	}
	
	//1:1 문의
	@RequestMapping(value = "/ask",  method = RequestMethod.GET)
	public void MPaskGET() {
		
		//logger.info("메인 페이지 진입 (NOT LOGIN)");
		
	}
	
	//1:1 문의
	@RequestMapping(value = "/ask_answer",  method = RequestMethod.GET)
	public void MPask_answerGET() {
		
		//logger.info("메인 페이지 진입 (NOT LOGIN)");
		
	}
	
	//1:1 문의
	@RequestMapping(value = "/ask_list",  method = RequestMethod.GET)
	public void MPask_listGET() {
		
		//logger.info("메인 페이지 진입 (NOT LOGIN)");
		
	}
	
	//탈퇴하기
	@RequestMapping(value = "/delete",  method = RequestMethod.GET)
	public void MPdeleteGET() {
		
		//logger.info("메인 페이지 진입 (NOT LOGIN)");
		
	}
}
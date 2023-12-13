package com.fs.controller;

import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.junit.Test;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fs.mapper.memberMapper;
import com.fs.service.Login_home_service;
import com.fs.service.Routine_delivery_service;
import com.fs.service.Storage_reserve_service;
import com.fs.service.Today_delivery_service;
import com.fs.vo.Login_home_VO;
import com.fs.vo.Routine_delivery_VO;
import com.fs.vo.Storage_reserve_VO;
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
    private Storage_reserve_service SRservice;
	
	@Inject
    private Today_delivery_service TDservice;
	
	@Inject
    private memberMapper mapper;
	
	
	// 마이페이지 당일 배송 목록 출력
    @RequestMapping(value = "/today_delivery", method = RequestMethod.GET)
    public String TDlist(Model model, Today_delivery_VO vo, HttpServletRequest request, 
    		@RequestParam(value = "year", required = false) String year, 
    		@RequestParam(value = "month", required = false) String month, 
    		@RequestParam(value = "date", required = false) String date) throws Exception{
    	HttpSession session = request.getSession();
    	String sessionID = (String) session.getAttribute("session_ID");
    	
    	List<Today_delivery_VO> list = TDservice.list(sessionID);
    	model.addAttribute("list", list);
    	
    	List<Today_delivery_VO> deliverySum = TDservice.deliverySum(sessionID);
    	model.addAttribute("deliverySum", deliverySum);

		return "/mypage/today_delivery";
    }
    
    // today_delivery DB 삽입
    @RequestMapping(value = "/today_delivery", method = RequestMethod.POST)
    public Map<String, Object> selectSearch(HttpServletRequest request,
            @RequestParam(value = "year", required = false) String year,
            @RequestParam(value = "month", required = false) String month,
            @RequestParam(value = "date", required = false) String date) throws Exception {
        HttpSession session = request.getSession();
        String sessionID = (String) session.getAttribute("session_ID");
        List<Today_delivery_VO> delivery_date = TDservice.delivery_date(sessionID, year, month, date);
        
        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("delivery_date", delivery_date);
        
        System.out.println("검색 완료: " + resultMap);

        return resultMap;
    }

    
   
	
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
	public void MPstorageGET(Model model,HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		String sessionID = (String) session.getAttribute("session_ID");
		Storage_reserve_VO storageVO = new Storage_reserve_VO();
		storageVO.setU_id(sessionID);
		List<Storage_reserve_VO> list = SRservice.SR_print(storageVO);
		
        for (Storage_reserve_VO srData : list) {
            String sr_start = srData.getSr_start();
            int sr_period1 = srData.getSr_period1();
            String sr_period2 = srData.getSr_period2();

            LocalDate startDate = LocalDate.parse(sr_start);
            LocalDate endDate = calculateEndDate(startDate, sr_period1, sr_period2);

            srData.setSr_endDate(endDate.toString()); // Set the calculated end date in your VO
        }
		
    	model.addAttribute("SR_data", list);
	}
	
    private LocalDate calculateEndDate(LocalDate startDate, int sr_period1, String sr_period2) {
        if ("month".equals(sr_period2)) {
            return startDate.plusMonths(sr_period1);
        } else if ("week".equals(sr_period2)) {
            return startDate.plusWeeks(sr_period1);
        } else {
            // Handle unsupported sr_period2 values
            throw new IllegalArgumentException("Unsupported sr_period2: " + sr_period2);
        }
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
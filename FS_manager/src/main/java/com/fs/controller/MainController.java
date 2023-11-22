package com.fs.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fs.model.ManagerVO;
import com.fs.service.ManagerService;

@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	private ManagerService managerservice;
	
	//로그인 페이지 이동
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void loginPageGET() {
		
		logger.info("로그인 페이지 진입");
		
	}
	
	//대쉬보드 페이지 이동
	@RequestMapping(value = "/admin_main", method = RequestMethod.GET)
	public void dashboardPageGET() {
			
		logger.info("dashboard 페이지 진입");
		
	}
	
	//admin_member 페이지 이동
	@RequestMapping(value = "/admin_member", method = RequestMethod.GET)
	public void admin_memberPageGET() {
			
		logger.info("admin_member 페이지 진입");
		
	}
	
	//회원 페이지 이동 (일반회뭔, 관리자 회원)
	@RequestMapping(value = "/user", method = RequestMethod.GET)
    public String mng_printGET(Model model) throws Exception {
        logger.info("mng_print POST 페이지 진입");
        
        List<ManagerVO> mng = managerservice.mng_print();
        
        System.out.println("mng " + mng);
        
        try {
            model.addAttribute("mngList", mng);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "user";
    }
	// 관리자 데이터 중복 확인
	@RequestMapping(value = "/mng_overlap", method = RequestMethod.POST)
	public void mng_overlapPOST() {
			
		logger.info("mng_overlap 페이지 진입");
		
		
	}

	
	// 관리자 데이터 삽입
	@RequestMapping(value = "/mng_insert", method = RequestMethod.POST)
	public String mng_insertPOST(HttpServletRequest request, ManagerVO manager) throws Exception {
	        
	    logger.info("mng_insert 페이지 진입");
	    
	    manager.setM_id(request.getParameter("m_id"));
	    manager.setM_pw(request.getParameter("password"));
	    manager.setM_name(request.getParameter("m_name"));
	    manager.setM_email(request.getParameter("m_email"));
	    manager.setM_phone(request.getParameter("m_phone"));
	    manager.setM_rep(request.getParameter("m_rep"));
	    manager.setM_use(request.getParameter("m_use"));
	    manager.setM_power(request.getParameter("power"));
	    
	    managerservice.mng_insert(manager);
	    
	    return "user";
	}
	
	//member 이동 
	@RequestMapping(value = "/member", method = RequestMethod.GET)
	public void memberPageGET() {
			
		logger.info("member 페이지 진입");
	}
	
	//member_detail 이동 
	@RequestMapping(value = "/member_detail", method = RequestMethod.GET)
	public void member_detailPageGET() {
			
		logger.info("member_detail 페이지 진입");
	}
	
	//member_status 이동 
	@RequestMapping(value = "/member_status", method = RequestMethod.GET)
	public void member_statusPageGET() {
			
		logger.info("member_status 페이지 진입");
	}
	
	//member_refund 이동 
	@RequestMapping(value = "/member_refund", method = RequestMethod.GET)
	public void member_refundPageGET() {
			
		logger.info("member_refund 페이지 진입");
	}
	
	//상품 페이지 이동
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public void productPageGET() {
			
		logger.info("product 페이지 진입");

	}
	
	//상품 페이지 이동
	@RequestMapping(value = "/product_status", method = RequestMethod.GET)
	public void product_statusPageGET() {
			
		logger.info("product_status 페이지 진입");

	}
	
	//배송 페이지 이동 (당일, 정기, 예약 배송)
	@RequestMapping(value = "/delivery", method = RequestMethod.GET)
	public void deliveryPageGET() {
			
		logger.info("delivery 페이지 진입");
		
	}
	
	//delivery_detail 이동 (당일, 정기, 예약 배송)
	@RequestMapping(value = "/delivery_detail", method = RequestMethod.GET)
	public void delivery_detailPageGET() {
			
		logger.info("delivery_detail 페이지 진입");
		
	}
	
	//delivery_status 이동 (당일, 정기, 예약 배송)
	@RequestMapping(value = "/delivery_status", method = RequestMethod.GET)
	public void delivery_statusPageGET() {
			
		logger.info("delivery_status 페이지 진입");
		
	}
	
	//상품 페이지 이동
	@RequestMapping(value = "/storage", method = RequestMethod.GET)
	public void storagePageGET() {
			
		logger.info("storage 페이지 진입");
		
	}
	
	//storage_status 페이지 이동
	@RequestMapping(value = "/storage_status", method = RequestMethod.GET)
	public void storage_statusPageGET() {
			
		logger.info("storage_status 페이지 진입");
		
	}

	//문의 페이지 이동
	@RequestMapping(value = "/inquiry", method = RequestMethod.GET)
	public void inquiryPageGET() {
			
		logger.info("inquiry 페이지 진입");
		
	}
	
	//상담 페이지 이동 (전화 고객 상담)
	@RequestMapping(value = "/inquiry_phone", method = RequestMethod.GET)
	public void inquiry_phonePageGET() {
			
		logger.info("inquiry_phone 페이지 진입");
		
	}
	
	//환불 문의 페이지 이동
	@RequestMapping(value = "/refund", method = RequestMethod.GET)
	public void refundPageGET() {
			
		logger.info("refund 페이지 진입");
		
	}
	
	//logistics 페이지 이동
	@RequestMapping(value = "/logistics", method = RequestMethod.GET)
	public void logisticsPageGET() {
			
		logger.info("logistics 페이지 진입");
		
	}

}
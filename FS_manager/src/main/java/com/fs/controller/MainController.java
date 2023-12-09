package com.fs.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fs.mapper.ManagerMapper;
import com.fs.model.ManagerVO;
import com.fs.service.ManagerService;

@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	private ManagerService managerservice;
	
	@Autowired
	ManagerMapper managerMapper;
	
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
        
        try {
            model.addAttribute("mngList", mng);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "user";
    }
	
	// 관리자 데이터 중복 확인
	@ResponseBody
	@RequestMapping(value = "/mng_overlap", method = RequestMethod.POST)
	public int mng_overlapPOST(@RequestParam(value = "m_id", required = false) String m_id) throws Exception {
			
		logger.info("mng_overlap POST 페이지 진입");
        
		int mngCount = managerservice.mng_overlap(m_id);

	    if (mngCount > 0) {
	        System.out.println("중복된 아이디입니다.");
	    } 
	    else if (m_id == null || m_id.trim().isEmpty()) {
	    	System.out.println("아이디가 공백입니다.");
	    } 
	    else {
	        System.out.println("사용 가능한 아이디입니다.");
	    }
	    
	    return mngCount;
	}
	
	// 관리자 목록 삭제
	@RequestMapping(value = "/delete/{m_id}", method = RequestMethod.GET)
	public String delete(@PathVariable String m_id) {

		managerMapper.delete(m_id);
	    return "redirect:/user";
	}
	
	// 관리자 목록 수정
	@RequestMapping(value = "/mng_update", method = RequestMethod.POST)
	public String update(ManagerVO manager, HttpServletRequest request, 
			@RequestParam(value = "m_power", required = false) String m_power,
			@RequestParam(value = "m_id", required = false) String m_id) throws Exception {

		System.out.println("updatePower : " + m_power);
		manager.setM_id(m_id);
        manager.setM_power(m_power);

        managerservice.mng_update(manager);
	    return "redirect:/user";
	}

	// 관리자 검색 기능
	@RequestMapping(value = "/mng_search", method = RequestMethod.POST)
	public @ResponseBody List<ManagerVO> mng_search(ManagerVO manager, Model model,
	        @RequestParam(value = "type", required = false) String type,
	        @RequestParam(value = "keyword", required = false) String keyword) throws Exception {

	    manager.setType(type);
	    manager.setKeyword(keyword);

	    List<ManagerVO> searchResult = managerservice.mng_search(manager);
	    
	    model.addAttribute("mngList", searchResult);

	    return searchResult;
	}


	
	// 관리자 등록
	@RequestMapping(value = "/mng_insert", method = RequestMethod.POST)
	public String mng_insertPOST(HttpServletRequest request, ManagerVO manager,
	        @RequestParam(value = "m_id", required = false) String m_id, Model model,
	        @RequestParam(value = "m_pw", required = false) String m_pw) throws Exception {
		
	    logger.info("mng_insert 페이지 진입");
	    
    	List<ManagerVO> mng = managerservice.mng_print();
        
        try {
            model.addAttribute("mngList", mng);
        } catch (Exception e) {
            e.printStackTrace();
        }

	    // 아이디가 비어있는 경우에는 삽입을 수행하지 않음
	    if (m_id == null || m_id.trim().isEmpty()) {
	        try {
	            model.addAttribute("mngList", mng);
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return "user";
	    }

	    int mngCount = managerservice.mng_overlap(m_id);

	    if (mngCount > 0) {
	        System.out.println("mng_insert 중복된 아이디입니다.");
	        return "user";
	    } else {
	        manager.setM_id(m_id);
	        manager.setM_pw(request.getParameter("password"));
	        manager.setM_name(request.getParameter("m_name"));
	        manager.setM_email(request.getParameter("m_email"));
	        manager.setM_phone(request.getParameter("m_phone"));
	        manager.setM_power(request.getParameter("power"));

	        managerservice.mng_insert(manager);
	        
	        try {
	            model.addAttribute("mngList", mng);
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        
	        return "user";
	    }
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
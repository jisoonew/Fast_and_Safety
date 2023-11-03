package com.fs.controller;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fs.mapper.memberMapper;
import com.fs.service.Login_home_service;
import com.fs.service.Reserve_delivery_service;
import com.fs.service.Routine_delivery_service;
import com.fs.service.Storage_reserve_service;
import com.fs.service.Today_delivery_service;
import com.fs.service.UserService;
import com.fs.service.User_QA_service;
import com.fs.vo.Login_home_VO;
import com.fs.vo.Reserve_delivery_VO;
import com.fs.vo.Routine_delivery_VO;
import com.fs.vo.Storage_reserve_VO;
import com.fs.vo.Today_delivery_VO;
import com.fs.vo.UserVO;
import com.fs.vo.User_QA_VO;
import com.fs.vo.kind_release_VO;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping(value = "/navbar")
@Log4j
public class NavController {

	@Inject
	private Today_delivery_service TDservice;
	@Inject
	private Routine_delivery_service RDservice;
	@Inject
	private Reserve_delivery_service REDservice;
	@Inject
	private Storage_reserve_service SRservice;
	@Inject
	private User_QA_service U_QAservice;
	
	@Autowired
	private UserService userservice;
	@Autowired
	private memberMapper mapper;

	private static final Logger logger = LoggerFactory.getLogger(NavController.class);

	// 회사소개 - 로그인 페이지 이동
	@RequestMapping(value = "introduce", method = RequestMethod.GET)
	public void introduceGET() {

		// log.info("회사소개 - 로그인 페이지 진입");

	}

	// 서비스 - 로그인 페이지 이동
	@RequestMapping(value = "product_storage", method = RequestMethod.GET)
	public void product_storageGET() {

		// log.info("서비스 - 보관품목 및 유의사항 - 로그인 페이지 진입");

	}

	// 서비스 - 로그인 페이지 이동
	@RequestMapping(value = "service_step", method = RequestMethod.GET)
	public void service_stepGET() {

		// log.info("서비스 - 입출고 절차 - 로그인 페이지 진입");

	}
	
	// 게시물 조회
	@RequestMapping(value = "view", method = RequestMethod.GET)
	public String viewGET(Model model, HttpServletRequest request, User_QA_VO vo, @RequestParam("num") int num) throws Exception {
		User_QA_VO user_qa_vo = U_QAservice.view(num);
		model.addAttribute("view", user_qa_vo);
		
		return "/navbar/view";
	}

	// 문의글 목록 출력
	@RequestMapping(value = "inquiry", method = RequestMethod.GET)
	public String inquiryGET(Model model, HttpServletRequest request, User_QA_VO vo, @RequestParam(defaultValue = "1") int page) throws Exception {
	    int total = U_QAservice.getTotalCount();
	    int recordsPerPage = 10;
	    int totalPages = (int) Math.ceil(total * 1.0 / recordsPerPage);

	    int offset = (page - 1) * recordsPerPage;
	    List<User_QA_VO> user_qa_print = U_QAservice.getUserQAByPage(offset, recordsPerPage);
        
	    for (User_QA_VO userQA : user_qa_print) {
	        System.out.println("Num: " + userQA.getNum());
	        System.out.println("Id: " + userQA.getQ_id());
	        
	        U_QAservice.updateUserQA(userQA);
	    }
	     
	    model.addAttribute("user_qa_print", user_qa_print);
	    model.addAttribute("totalPages", totalPages);
	    model.addAttribute("currentPage", page);
	    model.addAttribute("total", total);
		return "/navbar/inquiry";
	}

	// 문의하기 - 로그인 페이지 이동
	@RequestMapping(value = "write_inquiry", method = RequestMethod.GET)
	public void write_inquiryGET() {

	}
	
	// 문의하기 - 로그인 페이지 이동
	@RequestMapping(value = "write_inquiry", method = RequestMethod.POST)
	public String write_inquiryPOST(Model model, HttpServletRequest request, User_QA_VO vo,
			@RequestParam(value = "Q_id", required = false) String Q_id,
			@RequestParam(value = "Q_variety", required = false) String Q_variety,
			@RequestParam(value = "Q_title", required = false) String Q_title,
			@RequestParam(value = "Q_content", required = false) String Q_content) throws Exception {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date now = new Date();
        String nowTime = sdf.format(now);
        
		HttpSession session = request.getSession();

		String session_ID = (String) session.getAttribute("session_ID");
		
		vo.setU_id(session_ID);
		vo.setQ_id(Q_id);
		vo.setQ_variety(Q_variety);
		vo.setQ_title(Q_title);
		vo.setQ_content(Q_content);
		vo.setQ_ymd(nowTime);
		
		U_QAservice.user_qa(vo);
		return "/navbar/write_inquiry";
	}

	// 예약 배송 - 로그인 페이지 이동
	@RequestMapping(value = "reserve_delivery", method = RequestMethod.GET)
	public void reserve_deliveryGET(Model model, HttpServletRequest request) throws Exception {
		List<Login_home_VO> user;
		HttpSession session = request.getSession();

		String sessionID = (String) session.getAttribute("session_ID");
		List<kind_release_VO> kind_release = TDservice.kind_release(sessionID);
		model.addAttribute("kind_release", kind_release);
	}

	// 예약 배송 - DB 데이터 삽입
	@RequestMapping(value = "reserve_delivery", method = RequestMethod.POST)
	public String reserve_deliveryPOST(Reserve_delivery_VO vo, HttpServletRequest request, UserVO user,
			kind_release_VO kind_VO,
			@RequestParam(value = "red_id", required = false) String red_id,
			@RequestParam(value = "red_name", required = false) String red_name,
			@RequestParam(value = "red_phone", required = false) String red_phone,
			@RequestParam(value = "red_kind_release", required = false) String red_kind_release,
			@RequestParam(value = "red_volume", required = false) int red_volume,
			@RequestParam(value = "red_delivery_date", required = false) String red_delivery_date,
			@RequestParam(value = "red_address", required = false) String red_address,
			@RequestParam(value = "red_detail_address", required = false) String red_detail_address,
			@RequestParam(value = "red_delivery_fee", required = false) int red_delivery_fee) throws Exception {
		
		HttpSession session = request.getSession();

		String session_ID = (String) session.getAttribute("session_ID");

		vo.setU_id(session_ID);
		vo.setRed_id(red_id);
		vo.setRed_name(red_name);
		vo.setRed_phone(red_phone);
		vo.setRed_kind_release(red_kind_release);
		vo.setRed_volume(red_volume);
		vo.setRed_delivery_date(red_delivery_date);
		vo.setRed_address(red_address);
		vo.setRed_detail_address(red_detail_address);
		vo.setRed_delivery_fee(red_delivery_fee);

		REDservice.reserve_delivery(vo);
		return "/navbar/reserve_delivery";
	}

	// 예약 배송 - 로그인 페이지 이동
	@RequestMapping(value = "/routine_delivery", method = RequestMethod.GET)
	public void routine_deliveryGET(Model model, HttpServletRequest request) throws Exception {
		List<Login_home_VO> user;

		user = RDservice.user();
		model.addAttribute("user", user);
		HttpSession session = request.getSession();
		session.getAttribute("session_ID");
		session.getAttribute("session_phone");
		session.getAttribute("name");
		session.getAttribute("address");
		session.getAttribute("u_detail_address");

		String sessionID = (String) session.getAttribute("session_ID");
		List<kind_release_VO> kind_release = TDservice.kind_release(sessionID);
		model.addAttribute("kind_release", kind_release);
	}

	@RequestMapping(value = "/routine_delivery", method = RequestMethod.POST)
	public String routine_deliveryPOST(Routine_delivery_VO vo, HttpServletRequest request, UserVO user,
			kind_release_VO kind_VO, @RequestParam(value = "rd_id", required = false) String rd_id,
			@RequestParam(value = "rd_name", required = false) String rd_name,
			@RequestParam(value = "rd_phone", required = false) String rd_phone,
			@RequestParam(value = "rd_kind_release", required = false) String rd_kind_release,
			@RequestParam(value = "rd_volume", required = false) int rd_volume,
			@RequestParam(value = "rd_start", required = false) String rd_start,
			@RequestParam(value = "rd_cycle", required = false) String rd_cycle,
			@RequestParam(value = "rd_delivery_fee", required = false) int rd_delivery_fee,
			@RequestParam(value = "rd_address", required = false) String rd_address,
			@RequestParam(value = "rd_detail_address", required = false) String rd_detail_address) throws Exception {
		HttpSession session = request.getSession();

		String session_ID = (String) session.getAttribute("session_ID");

		vo.setU_id(session_ID);
		vo.setRd_id(rd_id);
		vo.setRd_name(rd_name);
		vo.setRd_phone(rd_phone);
		vo.setRd_kind_release(rd_kind_release);
		vo.setRd_volume(rd_volume);
		vo.setRd_start(rd_start);
		vo.setRd_cycle(rd_cycle);
		vo.setRd_delivery_fee(rd_delivery_fee);
		vo.setRd_address(rd_address);
		vo.setRd_detail_address(rd_detail_address);

		RDservice.routine_delivery(vo);
		return "/navbar/routine_delivery";
	}

	// 당일 배송의 수령인 출력
	@RequestMapping(value = "/today_delivery", method = RequestMethod.GET)
	public void writeView(Model model, HttpServletRequest request) throws Exception {
		List<Login_home_VO> user;
		Today_delivery_VO TDVO = new Today_delivery_VO();

		user = TDservice.user();
		model.addAttribute("user", user);
		HttpSession session = request.getSession();
		session.getAttribute("session_ID");
		session.getAttribute("session_phone");
		session.getAttribute("name");

		String sessionID = (String) session.getAttribute("session_ID");
		List<kind_release_VO> kind_release = TDservice.kind_release(sessionID);
		model.addAttribute("kind_release", kind_release);
	}

	// today_delivery DB 삽입
	@RequestMapping(value = "/today_delivery", method = RequestMethod.POST)
	public String write(Today_delivery_VO vo, HttpServletRequest request, UserVO user, kind_release_VO kind_VO,
			@RequestParam(value = "td_id", required = false) String td_id) throws Exception {
		HttpSession session = request.getSession();

		String session_ID = (String) session.getAttribute("session_ID");
		String td_name = (String) session.getAttribute("name");
		String td_address = (String) session.getAttribute("address");
		String u_detail_address = (String) session.getAttribute("u_detail_address");

		System.out.println("uuid 값 :" + td_id);

		vo.setU_id(session_ID);
		vo.setTd_name(td_name);
		vo.setTd_address(td_address);
		vo.setU_detail_address(u_detail_address);
		vo.setTd_id(td_id);

		TDservice.write(vo);
		return "/navbar/today_delivery";
	}

	// 창고 예약 - 로그인 페이지 이동
	@RequestMapping(value = "/storage_reserve", method = RequestMethod.GET)
	public void storage_reserveGET() {

	}

	// 창고 예약 - DB 데이터 삽입
	@RequestMapping(value = "/storage_reserve", method = RequestMethod.POST)
	public String storage_reservePOST(Storage_reserve_VO vo, HttpServletRequest request, UserVO user, kind_release_VO kind_VO, 
			@RequestParam(value = "sr_id", required = false) String sr_id,
			@RequestParam(value = "sr_name", required = false) String sr_name,
			@RequestParam(value = "sr_phone", required = false) String sr_phone,
			@RequestParam(value = "sr_category", required = false) String sr_category,
			@RequestParam(value = "sr_volume", required = false) int sr_volume,
			@RequestParam(value = "sr_period1", required = false) int sr_period1,
			@RequestParam(value = "sr_period2", required = false) String sr_period2,
			@RequestParam(value = "sr_fee", required = false) String sr_fee,
			@RequestParam(value = "sr_start", required = false) String sr_start) throws Exception {
		HttpSession session = request.getSession();

		String session_ID = (String) session.getAttribute("session_ID");

		vo.setU_id(session_ID);
		vo.setSr_id(sr_id);
		vo.setSr_name(sr_name);
		vo.setSr_phone(sr_phone);
		vo.setSr_category(sr_category);
		vo.setSr_volume(sr_volume);
		vo.setSr_period1(sr_period1);
		vo.setSr_period2(sr_period2);
		vo.setSr_fee(sr_fee);
		vo.setSr_start(sr_start);

		SRservice.storage_reserve(vo);
		return "/navbar/storage_reserve";
	}

}

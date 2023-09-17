package com.fs.controller;

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

import com.fs.mapper.memberMapper;
import com.fs.service.Login_home_service;
import com.fs.service.Reserve_delivery_service;
import com.fs.service.Routine_delivery_service;
import com.fs.service.Storage_reserve_service;
import com.fs.service.Today_delivery_service;
import com.fs.service.UserService;
import com.fs.vo.Login_home_VO;
import com.fs.vo.Reserve_delivery_VO;
import com.fs.vo.Routine_delivery_VO;
import com.fs.vo.Storage_reserve_VO;
import com.fs.vo.Today_delivery_VO;
import com.fs.vo.UserVO;
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

	// 문의 - 로그인 페이지 이동
	@RequestMapping(value = "inquiry", method = RequestMethod.GET)
	public void inquiryGET() {

		// log.info("문의 - 로그인 페이지 진입");

	}

	// 문의하기 - 로그인 페이지 이동
	@RequestMapping(value = "write_inquiry", method = RequestMethod.GET)
	public void write_inquiryGET() {

		// log.info("문의하기 - 로그인 페이지 진입");

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
	
	
	@RequestMapping(value = "reserve_delivery", method = RequestMethod.POST)
	public String reserve_deliveryPOST(Reserve_delivery_VO vo, HttpServletRequest request, UserVO user, kind_release_VO kind_VO) throws Exception {
		HttpSession session = request.getSession();

		String session_ID = (String) session.getAttribute("session_ID");
		
		vo.setU_id(session_ID);

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
		/* System.out.println("루틴 아이디" + session.getAttribute("session_ID")); */

		String sessionID = (String) session.getAttribute("session_ID");
		List<kind_release_VO> kind_release = TDservice.kind_release(sessionID);
		model.addAttribute("kind_release", kind_release);
	}
	
	@RequestMapping(value = "/routine_delivery", method = RequestMethod.POST)
	public String routine_deliveryPOST(Routine_delivery_VO vo, HttpServletRequest request, UserVO user, kind_release_VO kind_VO) throws Exception{
		HttpSession session = request.getSession();

		String session_ID = (String) session.getAttribute("session_ID");

		vo.setU_id(session_ID);

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
		System.out.println("수령인" + session.getAttribute("session_ID"));
		System.out.println("수령인 번호" + session.getAttribute("session_phone"));
		
		String sessionID = (String) session.getAttribute("session_ID");
		List<kind_release_VO> kind_release = TDservice.kind_release(sessionID);
		model.addAttribute("kind_release", kind_release);
	}

	// today_delivery DB 삽입
	@RequestMapping(value = "/today_delivery", method = RequestMethod.POST)
	public String write(Today_delivery_VO vo, HttpServletRequest request, UserVO user, kind_release_VO kind_VO)
			throws Exception {
		HttpSession session = request.getSession();

		String session_ID = (String) session.getAttribute("session_ID");
		String td_name = (String) session.getAttribute("name");
		String td_address = (String) session.getAttribute("address");
		String u_detail_address = (String) session.getAttribute("u_detail_address");

		vo.setU_id(session_ID);
		vo.setTd_name(td_name);
		vo.setTd_address(td_address);
		vo.setU_detail_address(u_detail_address);

		TDservice.write(vo);
		return "/navbar/today_delivery";
	}

	/*
	 * // 유저 상품 목록 출력
	 * 
	 * @RequestMapping(value = "/routine_delivery", method = RequestMethod.GET)
	 * public void kind_release(Model model,Routine_delivery_VO vo) throws
	 * Exception{ List<kind_release_VO> kind_release = null; kind_release =
	 * RDservice.kind_release(); model.addAttribute("kind_release", kind_release); }
	 * 
	 * 
	 * // today_delivery DB 삽입
	 * 
	 * @RequestMapping(value = "/routine_delivery", method = RequestMethod.POST)
	 * public String routine_delivery(Routine_delivery_VO vo, HttpServletRequest
	 * request) throws Exception{ RDservice.routine_delivery(vo); return
	 * "redirect:/routine_delivery"; }
	 * 
	 * 
	 */

	// 창고 예약 - 로그인 페이지 이동
	@RequestMapping(value = "/storage_reserve", method = RequestMethod.GET)
	public void storage_reserveGET() {

	}
	
	@RequestMapping(value = "/storage_reserve", method = RequestMethod.POST)
	public String storage_reservePOST(Storage_reserve_VO vo, HttpServletRequest request, UserVO user, kind_release_VO kind_VO) throws Exception {
		HttpSession session = request.getSession();

		String session_ID = (String) session.getAttribute("session_ID");

		vo.setU_id(session_ID);

		SRservice.storage_reserve(vo);
		return "/navbar/storage_reserve";
	}

}

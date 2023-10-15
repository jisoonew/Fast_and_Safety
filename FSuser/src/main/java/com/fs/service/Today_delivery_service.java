package com.fs.service;

import java.util.List;

import com.fs.vo.Login_home_VO;
import com.fs.vo.Today_delivery_VO;
import com.fs.vo.kind_release_VO;
import com.fs.vo.review_VO;

public interface Today_delivery_service {
	
	// today_delivery DB 삽입
	public void write(Today_delivery_VO vo) throws Exception;

	// 마이페이지 당일 배송 목록 출력
	List<Today_delivery_VO> list(String sessionID) throws Exception;
	
	List<Login_home_VO> user() throws Exception;
	
	// 당일 배송의 출고 물품 출력
	List<kind_release_VO> kind_release(String session_ID) throws Exception;
	
	// 당일 배송의 총 배송비 출력
	List<Today_delivery_VO> deliverySum(String session_ID) throws Exception;
	
	// 날짜 별 검색
		List<Today_delivery_VO> delivery_date(String session_ID, String year, String month, String date) throws Exception;

	List<review_VO> selectsearch(review_VO reviewvo) throws Exception;

}

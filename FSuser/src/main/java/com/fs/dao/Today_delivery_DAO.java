package com.fs.dao;

import java.util.List;

import com.fs.vo.Login_home_VO;
import com.fs.vo.Today_delivery_VO;
import com.fs.vo.kind_release_VO;
import com.fs.vo.review_VO;

public interface Today_delivery_DAO {
	
public void write(Today_delivery_VO vo);
	
	public List<Today_delivery_VO> list() throws Exception;
	
	
	// 당일 배송 수령인 이름 출력
	public List<Login_home_VO> user() throws Exception;

	// 당일 배송의 출고 물품 출력
	public List<kind_release_VO> kind_release() throws Exception;
	
	// 당일 배송의 총 배송비 출력
	public List<Today_delivery_VO> delivery_sum() throws Exception;
	
	// 게시글 검색하기
	public List<review_VO> selectsearch(review_VO reviewvo) throws Exception;
	
}
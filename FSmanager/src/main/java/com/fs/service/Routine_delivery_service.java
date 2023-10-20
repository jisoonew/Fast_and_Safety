package com.fs.service;

import java.util.List;

import com.fs.vo.Login_home_VO;
import com.fs.vo.Routine_delivery_VO;
import com.fs.vo.Today_delivery_VO;
import com.fs.vo.kind_release_VO;

public interface Routine_delivery_service {

	// 삽입
	public void routine_delivery(Routine_delivery_VO vo) throws Exception;
	
	// 사용자 등록된 물품 출력
	List<kind_release_VO> kind_release() throws Exception;
	
	// 
	List<Routine_delivery_VO> routine_delivery_print() throws Exception;
	
	List<Login_home_VO> user() throws Exception;

}

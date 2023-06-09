package com.fs.dao;

import java.util.List;

import com.fs.vo.Login_home_VO;
import com.fs.vo.Routine_delivery_VO;
import com.fs.vo.Today_delivery_VO;
import com.fs.vo.kind_release_VO;

public interface Routine_delivery_DAO {
	
	// DB 저장
	public void routine_delivery(Routine_delivery_VO vo);
	
	// 당일 배송의 출고 물품 출력
	public List<kind_release_VO> kind_release() throws Exception;
}

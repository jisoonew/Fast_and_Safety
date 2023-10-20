package com.fs.service;

import com.fs.vo.Reserve_delivery_VO;
import com.fs.vo.Routine_delivery_VO;

public interface Reserve_delivery_service {
	// 삽입
		public void reserve_delivery(Reserve_delivery_VO vo) throws Exception;
}

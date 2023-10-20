package com.fs.service;

import com.fs.vo.Routine_delivery_VO;
import com.fs.vo.Storage_reserve_VO;

public interface Storage_reserve_service {
	// 삽입
		public void storage_reserve(Storage_reserve_VO vo) throws Exception;
}

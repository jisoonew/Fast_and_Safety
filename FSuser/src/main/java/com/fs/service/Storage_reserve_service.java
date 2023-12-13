package com.fs.service;

import java.util.List;

import com.fs.vo.Routine_delivery_VO;
import com.fs.vo.Storage_reserve_VO;

public interface Storage_reserve_service {
	// 삽입
		public void storage_reserve(Storage_reserve_VO vo) throws Exception;
		
		// 출력
		public List<Storage_reserve_VO> SR_print(Storage_reserve_VO storageVO) throws Exception;
}

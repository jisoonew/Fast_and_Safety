package com.fs.dao;

import java.util.List;

import com.fs.vo.Routine_delivery_VO;
import com.fs.vo.Storage_reserve_VO;

public interface Storage_reserve_DAO {
	// DB 저장
		public void storage_reserve(Storage_reserve_VO vo);
		
		// DB 저장
				public List<Storage_reserve_VO> SR_print(Storage_reserve_VO storageVO);
}

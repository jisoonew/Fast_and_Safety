package com.fs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.fs.dao.Routine_delivery_DAO;
import com.fs.dao.Storage_reserve_DAO;
import com.fs.vo.Routine_delivery_VO;
import com.fs.vo.Storage_reserve_VO;

@Service
public class Storage_reserve_serviceImp implements Storage_reserve_service{
	@Inject
	private Storage_reserve_DAO dao;
	
	
	// today_delivery DB 삽입
	@Override
	public void storage_reserve(Storage_reserve_VO vo) throws Exception {
		dao.storage_reserve(vo);
	}
	
	@Override
	public List<Storage_reserve_VO> SR_print(Storage_reserve_VO storageVO) throws Exception {
		
		return dao.SR_print(storageVO);
	}
}

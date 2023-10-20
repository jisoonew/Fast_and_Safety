package com.fs.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.fs.dao.Reserve_delivery_DAO;
import com.fs.dao.Routine_delivery_DAO;
import com.fs.vo.Reserve_delivery_VO;
import com.fs.vo.Routine_delivery_VO;

@Service
public class Reserve_delivery_serviceImp implements Reserve_delivery_service{
	@Inject
	private Reserve_delivery_DAO dao;
	
	
	// today_delivery DB 삽입
	@Override
	public void reserve_delivery(Reserve_delivery_VO vo) throws Exception {
		dao.reserve_delivery(vo);
	}
}

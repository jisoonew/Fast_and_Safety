package com.fs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.fs.dao.Login_home_DAO;
import com.fs.dao.Routine_delivery_DAO;
import com.fs.dao.Today_delivery_DAO;
import com.fs.vo.Login_home_VO;
import com.fs.vo.Routine_delivery_VO;
import com.fs.vo.Today_delivery_VO;
import com.fs.vo.kind_release_VO;

@Service
public class Routine_delivery_serviceImp implements Routine_delivery_service {
	@Inject
	private Routine_delivery_DAO dao;
	
	
	// today_delivery DB 삽입
	@Override
	public void routine_delivery(Routine_delivery_VO vo) throws Exception {
		dao.routine_delivery(vo);
	}
	
	// 게시글 출력
	@Override
	public List<kind_release_VO> kind_release() throws Exception {
		return dao.kind_release();
	}
	
	// 게시글 출력
	@Override
	public List<Routine_delivery_VO> routine_delivery_print() throws Exception {
		return dao.routine_delivery_print();
	}
}

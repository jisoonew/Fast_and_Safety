package com.fs.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.fs.dao.Today_delivery_DAO;
import com.fs.vo.Today_delivery_VO;

@Service
public class Today_delivery_serviceImp implements Today_delivery_service {
	@Inject
	private Today_delivery_DAO dao;
	
	// 게시글 작성
	@Override
	public void write(Today_delivery_VO vo) throws Exception {
		dao.write(vo);
}
}

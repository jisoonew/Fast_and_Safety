package com.fs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.fs.dao.Login_home_DAO;
import com.fs.dao.Today_delivery_DAO;
import com.fs.vo.Login_home_VO;
import com.fs.vo.Today_delivery_VO;

@Service
public class Login_home_serviceImp implements Login_home_service {
	@Inject
	private Login_home_DAO dao;
	
	// 게시글 작성
	@Override
	public List<Login_home_VO> user() throws Exception {
		return dao.user();
	}
}

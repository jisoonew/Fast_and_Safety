package com.fs.service;

import java.util.ArrayList;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
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
	
	// 게시글 작성
	@Override
	public List<Today_delivery_VO> list() throws Exception {
		return dao.list();
	}

}

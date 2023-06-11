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
import com.fs.vo.Login_home_VO;
import com.fs.vo.Today_delivery_VO;
import com.fs.vo.kind_release_VO;
import com.fs.vo.review_VO;

@Service
public class Today_delivery_serviceImp implements Today_delivery_service {
	@Inject
	private Today_delivery_DAO dao;
	
	
	// today_delivery DB 삽입
	@Override
	public void write(Today_delivery_VO vo) throws Exception {
		dao.write(vo);
	}
	
	// 게시글 출력
	@Override
	public List<Today_delivery_VO> list() throws Exception {
		return dao.list();
	}

	@Override
	public List<Login_home_VO> user() throws Exception {
		return dao.user();
	}
	
	
	// 당일 배송의 출고 물품 출력
	@Override
	public List<kind_release_VO> kind_release() throws Exception {
		return dao.kind_release();
	}
	
	// 당일 배송의 총 배송비 출력
	@Override
	public List<Today_delivery_VO> delivery_sum() throws Exception {
		return dao.delivery_sum();
	}
	
	// 게시글 제목 또는 작성자로 검색하기
	@Override
		public List<review_VO> selectsearch(review_VO reviewvo) throws Exception {
			return dao.selectsearch(reviewvo);
		}
}

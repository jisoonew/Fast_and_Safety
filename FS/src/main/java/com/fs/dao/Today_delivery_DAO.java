package com.fs.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.fs.vo.Today_delivery_VO;

import mapper.memberMapper;

public interface Today_delivery_DAO {
	
	public void write(Today_delivery_VO vo);

}


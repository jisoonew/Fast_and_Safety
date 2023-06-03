package com.fs.dao;

import java.util.List;

import com.fs.vo.Today_delivery_VO;

public interface Today_delivery_DAO {
	
	public void write(Today_delivery_VO vo);
	
	public List<Today_delivery_VO> list() throws Exception;

}


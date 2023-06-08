package com.fs.dao;

import java.util.List;

import com.fs.vo.Login_home_VO;
import com.fs.vo.Today_delivery_VO;

public interface Login_home_DAO {
	
	public List<Login_home_VO> user() throws Exception;
}

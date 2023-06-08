package com.fs.service;

import java.util.List;

import com.fs.vo.Login_home_VO;

public interface Login_home_service {
	
	List<Login_home_VO> user() throws Exception;
}

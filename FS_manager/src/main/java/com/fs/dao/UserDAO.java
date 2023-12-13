package com.fs.dao;

import java.util.List;

import com.fs.model.ManagerVO;
import com.fs.model.UserVO;

public interface UserDAO {
	public List<UserVO> u_print() throws Exception;
	
	public List<UserVO> u_details(String u_id) throws Exception;
}

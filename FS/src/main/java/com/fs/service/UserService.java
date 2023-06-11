package com.fs.service;

import com.fs.vo.UserVO;

public interface UserService {
	//회원가입
	public void userJoin(UserVO user) throws Exception;
}

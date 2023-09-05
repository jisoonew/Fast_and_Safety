package com.fs.mapper;

import com.fs.vo.UserVO;

public interface UserMapper {
	
	//회원가입
	//src/main/resources 에 com.fs.mapper -> UserMapper.xml 에 있는 insert id가 userJoin
	public void userJoin(UserVO user);
	
	// 아이디 중복 검사
	public int idCheck(String u_id);
	
	//로그인
	public UserVO userLogin (UserVO user);

}

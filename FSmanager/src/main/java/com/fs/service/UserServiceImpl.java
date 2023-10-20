package com.fs.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fs.mapper.UserMapper;
import com.fs.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {

		@Autowired
		UserMapper usermapper;
		
		// 회원가입
		@Override
		public void userJoin(UserVO user) throws Exception
		{ 
			usermapper.userJoin(user);
		}
		
		//아이디 중복 체크
		@Override
		public int idCheck(String u_id) throws Exception {
			
			return usermapper.idCheck(u_id);
		}
		
		// 로그인
	    @Override
	    public UserVO userLogin(UserVO user) throws Exception {
	        
	    	return usermapper.userLogin(user);
	    }
 
}
package com.fs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fs.dao.ManagerDAO;
import com.fs.dao.UserDAO;
import com.fs.mapper.ManagerMapper;
import com.fs.mapper.UserMapper;
import com.fs.model.ManagerVO;
import com.fs.model.PagingVO;
import com.fs.model.UserVO;

@Service
public class UserServiceImp implements UserService {
	@Autowired
	private UserDAO dao;
	
	@Autowired
	UserMapper userMapper;
	
	@Override
	public List<UserVO> u_print () throws Exception {
		return dao.u_print();
	}
	
	//사용자 데이터 수정
	@Override
	public void u_update (UserVO uservo) throws Exception {
		userMapper.u_update(uservo);
	}
	
	//사용자 데이터 삭제
	@Override
	public void u_delete (UserVO uservo) throws Exception {
		userMapper.u_delete(uservo);
	}
	
	@Override
	public List<UserVO> u_details (String u_id) throws Exception {
		return dao.u_details(u_id);
	}
	
	@Override
	public int countBoard() {
		return userMapper.countBoard();
	}

	@Override
	public List<UserVO> selectBoard(PagingVO vo) {
		return userMapper.selectBoard(vo);
	}
}

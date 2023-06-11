package com.fs.mapper;

import com.fs.vo.UserVO;

public interface UserMapper {
	
	//ȸ������
	//userJoin�� UserMapper.xml�� �ִ� insert�� id
	//UserVO�� UserVO.java ������ UserVO Ŭ����
	public void userJoin(UserVO user);
}

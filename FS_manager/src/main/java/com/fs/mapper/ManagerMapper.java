package com.fs.mapper;

import java.util.List;

import com.fs.model.ManagerVO;

public interface ManagerMapper {
	
	//로그인
	public ManagerVO managerLogin (ManagerVO manager);

	//관리자 데이터 삽입
	public void mng_insert (ManagerVO manager);
	
	public List<ManagerVO> mng_print ();

}

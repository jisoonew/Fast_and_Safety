package com.fs.service;

import java.util.List;

import com.fs.model.ManagerVO;

public interface ManagerService {
	
	//로그인
	public ManagerVO managerLogin (ManagerVO manager) throws Exception;

	//관리자 데이터 삽입
	public void mng_insert (ManagerVO manager) throws Exception;
	
	//관리자 데이터 수정
	public void mng_update (ManagerVO manager) throws Exception;
	
	//관리자 데이터 수정
	public List<ManagerVO> mng_search (ManagerVO manager) throws Exception;
		
	//관리자 데이터 출력
	List<ManagerVO> mng_print () throws Exception;

	//관리자 아이디 중복 확인
	int mng_overlap (String m_id) throws Exception;
}

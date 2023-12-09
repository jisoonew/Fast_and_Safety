package com.fs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;

import com.fs.model.ManagerVO;

public interface ManagerMapper {
	
	//로그인
	public ManagerVO managerLogin (ManagerVO manager);

	//관리자 데이터 삽입
	public void mng_insert (ManagerVO manager);
	
	//관리자 데이터 수정
	public void mng_update (ManagerVO manager);
	
	//관리자 데이터 검색
	public List<ManagerVO> mng_search (ManagerVO manager);
	
	public List<ManagerVO> mng_print ();

	@Delete("delete from manager where m_id = #{m_id}")
	public boolean delete(String m_id);
}

package com.fs.service;

import java.util.List;

import com.fs.dao.User_QA_DAO;
import com.fs.vo.Today_delivery_VO;
import com.fs.vo.User_QA_VO;

public interface User_QA_service {
	// 데이터 삽입
	public void user_qa(User_QA_VO vo) throws Exception;
	
	public List<User_QA_VO> user_QA_print() throws Exception;
	
	public List<User_QA_VO> user_QA_print(int page, int recordsPerPage) throws Exception;
	
	public int getTotalCount() throws Exception;
	
	List<User_QA_VO> getUserQAByPage(int offset, int limit) throws Exception;
	
	 // 게시물 조회
    public User_QA_VO view(int num) throws Exception;
    
    List<User_QA_VO> getAllUserQAs() throws Exception;

    void updateUserQA(User_QA_VO userQA) throws Exception;
}

package com.fs.dao;

import java.util.List;
import java.util.Map;

import com.fs.vo.Login_home_VO;
import com.fs.vo.Reserve_delivery_VO;
import com.fs.vo.Today_delivery_VO;
import com.fs.vo.User_QA_VO;

public interface User_QA_DAO {
	// 문의글 작성
	public void user_qa(User_QA_VO vo) throws Exception;
	
	// 문의글 목록 출력
	public List<User_QA_VO> user_QA_print() throws Exception;
	
    // 문의글 목록 출력 (페이징)
    public List<User_QA_VO> user_QA_print(int page, int recordsPerPage) throws Exception;

    // 전체 레코드 수 반환
    public int getTotalCount() throws Exception;
    
    // 페이징
    List<User_QA_VO> getUserQAByPage(int offset, int limit) throws Exception;
    
    // 문의글 조회
    public User_QA_VO view(String Q_id) throws Exception;
    
    List<User_QA_VO> getAllUserQAs() throws Exception;

    void updateUserQA(User_QA_VO userQA) throws Exception;
    
 // DB 저장
 	public void inquiry_change(User_QA_VO vo);

}
 
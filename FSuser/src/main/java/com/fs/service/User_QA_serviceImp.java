package com.fs.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fs.dao.User_QA_DAO;
import com.fs.mapper.memberMapper;
import com.fs.vo.Reserve_delivery_VO;
import com.fs.vo.Today_delivery_VO;
import com.fs.vo.User_QA_VO;


@Service
public class User_QA_serviceImp implements User_QA_service{
	@Inject
	private User_QA_DAO dao;
	
	@Autowired
	private User_QA_DAO userQA_DAO;
	
	
	// 문의글 삽입
	@Override
	public void user_qa(User_QA_VO vo) throws Exception {
		dao.user_qa(vo);
	}
	
	// 문의글 출력
	@Override
	public List<User_QA_VO> user_QA_print() throws Exception {
		return dao.user_QA_print();
	}

    @Override
    public List<User_QA_VO> user_QA_print(int page, int recordsPerPage) throws Exception {
        return dao.user_QA_print(page, recordsPerPage);
    }

    public void setUser_QA_DAO(User_QA_DAO user_qa_dao) {
        this.dao = user_qa_dao;
    }

    @Override
    public List<User_QA_VO> getUserQAByPage(int offset, int limit) throws Exception {
        return dao.getUserQAByPage(offset, limit);
    }
    
    @Override
    public int getTotalCount() throws Exception {
        return dao.getTotalCount();
    }
    
    
 // 게시물 조회
    @Override
    public User_QA_VO view(String Q_id) throws Exception {

     return dao.view(Q_id);
    }
    

    @Override
    public List<User_QA_VO> getAllUserQAs() throws Exception {
        return userQA_DAO.getAllUserQAs();
    }

    @Override
    public void updateUserQA(User_QA_VO userQA) throws Exception {
        userQA_DAO.updateUserQA(userQA);
    }
    
    @Override
	public void inquiry_change(User_QA_VO vo) throws Exception {
    	userQA_DAO.inquiry_change(vo);
	}
    
}

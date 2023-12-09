package com.fs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fs.dao.ManagerDAO;
import com.fs.mapper.ManagerMapper;
import com.fs.model.ManagerVO;

@Service
public class ManagerServicelmp implements ManagerService {
	
	@Autowired
	ManagerMapper managermapper;
	
    @Autowired
	private ManagerDAO dao;
	
	//로그인
	@Override
	public ManagerVO managerLogin (ManagerVO manager) throws Exception {
		return managermapper.managerLogin(manager);
	}
	
	//관리자 데이터 삽입
	@Override
	public void mng_insert (ManagerVO manager) throws Exception {
		managermapper.mng_insert(manager);
	}
	
	//관리자 데이터 수정
	@Override
	public void mng_update (ManagerVO manager) throws Exception {
		managermapper.mng_update(manager);
	}
	
	//관리자 데이터 수정
	@Override
	public List<ManagerVO> mng_search (ManagerVO manager) throws Exception {
		return managermapper.mng_search(manager);
	}
	
	@Override
	public List<ManagerVO> mng_print () throws Exception {
		return dao.mng_print();
	}
	
	@Override
    public int mng_overlap(String m_id) throws Exception {
        return dao.mng_overlap(m_id);
    }

}

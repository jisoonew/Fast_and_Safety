package com.fs.dao;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import com.fs.model.ManagerVO;


public interface ManagerDAO {
	
	public List<ManagerVO> mng_print() throws Exception;
	
	int mng_overlap(String m_id) throws Exception;
}

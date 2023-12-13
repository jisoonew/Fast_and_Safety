package com.fs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fs.dao.ManagerDAO;
import com.fs.dao.Storage_ReserveDAO;
import com.fs.mapper.ManagerMapper;
import com.fs.mapper.StorageMapper;
import com.fs.model.ManagerVO;
import com.fs.model.Storage_ReserveVO;

@Service
public class Storage_Reserve_ServiceImp implements Storage_Reserve_Service {
	@Autowired
	StorageMapper storagemapper;
	
    @Autowired
	private Storage_ReserveDAO dao;

	@Override
	public List<Storage_ReserveVO> SR_print (Storage_ReserveVO SRvo) throws Exception {
		return dao.SR_print(SRvo);
	}

	@Override
	public List<Storage_ReserveVO> SR_delete (String sr_id) throws Exception {
		return dao.SR_delete(sr_id);
	}
}

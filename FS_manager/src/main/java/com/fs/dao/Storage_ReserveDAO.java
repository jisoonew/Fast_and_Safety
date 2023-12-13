package com.fs.dao;

import java.util.List;

import com.fs.model.ManagerVO;
import com.fs.model.Storage_ReserveVO;

public interface Storage_ReserveDAO {
	public List<Storage_ReserveVO> SR_print(Storage_ReserveVO SRvo) throws Exception;
	
	public List<Storage_ReserveVO> SR_delete(String sr_id) throws Exception;
}

package com.fs.service;

import java.util.List;

import com.fs.model.ManagerVO;
import com.fs.model.Storage_ReserveVO;

public interface Storage_Reserve_Service {
	//창고 예약 데이터 출력
		List<Storage_ReserveVO> SR_print (Storage_ReserveVO SRvo) throws Exception;
		
		List<Storage_ReserveVO> SR_delete (String sr_id) throws Exception;
}

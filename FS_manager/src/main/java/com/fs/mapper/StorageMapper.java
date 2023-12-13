package com.fs.mapper;

import java.util.List;

import com.fs.model.ManagerVO;
import com.fs.model.Storage_ReserveVO;

public interface StorageMapper {
	public List<Storage_ReserveVO> SR_print (Storage_ReserveVO SRvo);
}

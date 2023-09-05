package com.fs.mapper;

import org.apache.ibatis.annotations.Param;

import com.fs.vo.UserVO;

public interface memberMapper {
	static UserVO findDataBySessionId(@Param("sessionID") String sessionID) {
		// TODO Auto-generated method stub
		return null;
	}
}

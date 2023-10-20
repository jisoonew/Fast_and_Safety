package com.fs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.fs.vo.Today_delivery_VO;
import com.fs.vo.UserVO;
import com.fs.vo.kind_release_VO;

@Mapper
public interface memberMapper {
	kind_release_VO kind_release(String session_ID);
	
	public List<Today_delivery_VO> list_today_delivery();
}

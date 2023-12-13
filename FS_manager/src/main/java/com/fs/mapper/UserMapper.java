package com.fs.mapper;

import java.util.List;

import com.fs.model.ManagerVO;
import com.fs.model.PagingVO;
import com.fs.model.UserVO;

public interface UserMapper {
	public List<UserVO> mng_print ();
	
	public UserVO u_details (String u_id);
	
	// 게시물 총 갯수
	public int countBoard();

	// 페이징 처리 게시글 조회
	public List<UserVO> selectBoard(PagingVO vo);
	
	//사용자 데이터 수정
	public void u_update (UserVO uservo);
	
	//사용자 데이터 삭제
	public void u_delete (UserVO uservo);
}

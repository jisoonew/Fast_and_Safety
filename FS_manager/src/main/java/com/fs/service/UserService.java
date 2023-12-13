package com.fs.service;

import java.util.List;

import com.fs.model.ManagerVO;
import com.fs.model.PagingVO;
import com.fs.model.UserVO;

public interface UserService {
	//사용자 데이터 출력
		List<UserVO> u_print () throws Exception;
		
		//사용자 데이터 상세보기
		List<UserVO> u_details(String u_id) throws Exception;
		
		//사용자 데이터 수정
		public void u_update (UserVO uservo) throws Exception;
		
		//사용자 데이터 삭제
				public void u_delete (UserVO uservo) throws Exception;
				
		// 게시물 총 갯수
		public int countBoard();
		
		// 페이징 처리 게시글 조회
		public List<UserVO> selectBoard(PagingVO vo);
}

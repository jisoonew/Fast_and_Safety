package com.fs.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fs.vo.Reserve_delivery_VO;
import com.fs.vo.Today_delivery_VO;
import com.fs.vo.User_QA_VO;

@Repository
public class User_QA_DAOImp implements User_QA_DAO{
	@Inject // 의존관계를 자동으로 연결(JAVA에서 제공) ==@autowired (Spring에서 제공)
    private SqlSession sqlSession;
   
	@Autowired
    private static String namespace = "memberMapper";
                                            //memberMapper.xml의 namespace값
    
    // 데이터 삽입
    @Override
    public void user_qa(User_QA_VO vo) throws Exception{
        sqlSession.insert(namespace+".user_QA", vo);
    }
    
    // 데이터 목록 출력
    @Override
    public List<User_QA_VO> user_QA_print() throws Exception{
		return sqlSession.selectList(namespace+".user_QA_print");
    }
    
    public List<User_QA_VO> user_QA_print(int page, int recordsPerPage) throws Exception {
        Map<String, Object> params = new HashMap<>();
        params.put("start", (page - 1) * recordsPerPage);
        params.put("recordsPerPage", recordsPerPage);
        return sqlSession.selectList(namespace + ".user_QA_print_paging", params);
    }
    

    @Override
    public List<User_QA_VO> getUserQAByPage(int offset, int limit) throws Exception {
        try {
            Map<String, Integer> params = new HashMap<>();
            params.put("offset", offset);
            params.put("limit", limit);
            return sqlSession.selectList(namespace + ".getUserQAByPage", params);
        } catch (Exception e) {
            throw new Exception("Failed to retrieve paged User_QA_VO data: " + e.getMessage());
        }
    }

    @Override
    public int getTotalCount() throws Exception {
        try {
            return sqlSession.selectOne(namespace + ".getTotalCount");
        } catch (Exception e) {
            throw new Exception("Failed to get the total count of User_QA_VO: " + e.getMessage());
        }
    }
    
 // 게시물 조회
    public User_QA_VO view(String Q_id) throws Exception {
     
     return sqlSession.selectOne(namespace + ".view", Q_id);
    }

    public void setSqlSession(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    @Override
    public List<User_QA_VO> getAllUserQAs() throws Exception {
        // MyBatis 호출
        return sqlSession.selectList("getAllUserQAs");
    }

    @Override
    public void updateUserQA(User_QA_VO userQA) throws Exception {
        sqlSession.update(namespace + ".updateUserQA", userQA);
    }
    
    // 데이터 삽입
    @Override
    public void inquiry_change(User_QA_VO vo) {
        sqlSession.update(namespace+".inquiry_change", vo);
    }
    
}

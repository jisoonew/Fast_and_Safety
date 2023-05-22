package com.fs.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fs.vo.Today_delivery_VO;

@Repository
public class Today_delivery_DAOImp implements Today_delivery_DAO {

	@Inject // 의존관계를 자동으로 연결(JAVA에서 제공) ==@autowired (Spring에서 제공)
    private SqlSession sqlSession;
	
	@Autowired
	private SqlSession SqlSession;
   
   
    private static String namespace = "org.hello.mapper.memberMapper";
                                            //memberMapper.xml의 namespace값
   // 데이터 삽입
    @Override
    public void write(Today_delivery_VO vo) {
        sqlSession.insert(namespace+".insert_today_delivery", vo);
    }
    


}
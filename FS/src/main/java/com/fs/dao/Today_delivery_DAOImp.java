package com.fs.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.fs.vo.Today_delivery_VO;

@Repository
public class Today_delivery_DAOImp implements Today_delivery_DAO {

	@Inject // 의존관계를 자동으로 연결(JAVA에서 제공) ==@autowired (Spring에서 제공)
    private SqlSession sqlSession;
   
   
    private static final String namespace = "org.hello.mapper.memberMapper";
                                            //memberMapper.xml의 namespace값
   
    @Override
    public void write(Today_delivery_VO vo) {
        sqlSession.insert(namespace+".insert_today_delivery", vo);
    }
   
}
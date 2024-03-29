package com.fs.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.fs.vo.Reserve_delivery_VO;
import com.fs.vo.Routine_delivery_VO;

@Repository
public class Reserve_delivery_DAOImp implements Reserve_delivery_DAO {
	@Inject // 의존관계를 자동으로 연결(JAVA에서 제공) ==@autowired (Spring에서 제공)
    private SqlSession sqlSession;
   
   
    private static String namespace = "memberMapper";
                                            //memberMapper.xml의 namespace값
   // 데이터 삽입
    @Override
    public void reserve_delivery(Reserve_delivery_VO vo) {
        sqlSession.insert(namespace+".reserve_routine_delivery", vo);
    }
}

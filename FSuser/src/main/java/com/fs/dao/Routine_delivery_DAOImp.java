package com.fs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.fs.vo.Routine_delivery_VO;
import com.fs.vo.Today_delivery_VO;
import com.fs.vo.kind_release_VO;


@Repository
public class Routine_delivery_DAOImp implements Routine_delivery_DAO {

	@Inject // 의존관계를 자동으로 연결(JAVA에서 제공) ==@autowired (Spring에서 제공)
    private SqlSession sqlSession;
   
   
    private static String namespace = "memberMapper";
                                            //memberMapper.xml의 namespace값
   // 데이터 삽입
    @Override
    public void routine_delivery(Routine_delivery_VO vo) {
        sqlSession.insert(namespace+".insert_routine_delivery", vo);
    }
    
    // 유저의 물품 목록 출력
    @Override
    public List<kind_release_VO> kind_release() throws Exception {
        return sqlSession.selectList(namespace + ".kind_release");
    }
    
    // 데이터 출력
    @Override
    public List<Routine_delivery_VO> routine_delivery_print() throws Exception {
        return sqlSession.selectList(namespace + ".list_routine_delivery");
    }
}

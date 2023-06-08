package com.fs.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fs.vo.Login_home_VO;
import com.fs.vo.Today_delivery_VO;
import com.fs.vo.kind_release_VO;

@Repository
public class Today_delivery_DAOImp implements Today_delivery_DAO {

	@Inject // 의존관계를 자동으로 연결(JAVA에서 제공) ==@autowired (Spring에서 제공)
    private SqlSession sqlSession;
   
   
    private static String namespace = "memberMapper";
                                            //memberMapper.xml의 namespace값
   // 데이터 삽입
    @Override
    public void write(Today_delivery_VO vo) {
        sqlSession.insert(namespace+".insert_today_delivery", vo);
    }
    
    // 출력
    @Override
    public List<Today_delivery_VO> list() throws Exception {
        return sqlSession.selectList(namespace + ".list_today_delivery");
    }
    
 // 당일 배송 수령인 이름 출력
    @Override
    public List<Login_home_VO> user() throws Exception {
        return sqlSession.selectList(namespace + ".user");
    }
    
    // 당일 배송 출고 물품 출력
    @Override
    public List<kind_release_VO> kind_release() throws Exception {
        return sqlSession.selectList(namespace + ".kind_release");
    }
    
    // 당일 배송 총 배송비 출력
    @Override
    public List<Today_delivery_VO> delivery_sum() throws Exception {
        return sqlSession.selectList(namespace + ".delivery_sum");
    }

}
package com.fs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.fs.model.ManagerVO;
import com.fs.model.UserVO;

@Repository // DAO라고 명시
public class UserDAOImpl implements UserDAO {
    @Inject // 의존관계를 자동으로 연결(JAVA에서 제공) ==@autowired (Spring에서 제공)
    private SqlSession sqlSession;
   
   
    private static final String namespace = "com.fs.mapper.UserMapper";
                                            //memberMapper.xml의 namespace값
    
   
    @Override
    public List<UserVO> u_print() {
        return sqlSession.selectList(namespace + ".u_print");
    }
    
    @Override
    public List<UserVO> u_details(String u_id) {
        return sqlSession.selectList(namespace + ".u_details", u_id);
    }
}

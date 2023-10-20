package com.fs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.fs.vo.Login_home_VO;

@Repository
public class Login_home_DAOlmp implements Login_home_DAO {
	
	@Inject // 의존관계를 자동으로 연결(JAVA에서 제공) ==@autowired (Spring에서 제공)
    private SqlSession sqlSession;
   
   
    private static String namespace = "memberMapper";
                                            //memberMapper.xml의 namespace값
    
    // 출력
    @Override
    public List<Login_home_VO> user() throws Exception {
        return sqlSession.selectList(namespace + ".user");
    }

}
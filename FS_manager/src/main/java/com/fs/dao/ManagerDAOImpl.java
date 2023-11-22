package com.fs.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.fs.model.ManagerVO;

@Repository // DAO라고 명시
public class ManagerDAOImpl implements ManagerDAO {

    @Inject // 의존관계를 자동으로 연결(JAVA에서 제공) ==@autowired (Spring에서 제공)
    private SqlSession sqlSession;
   
   
    private static final String namespace = "com.fs.mapper.ManagerMapper";
                                            //memberMapper.xml의 namespace값
    
   
    @Override
    public List<ManagerVO> mng_print() {
        return sqlSession.selectList(namespace + ".mng_print");
    }
	
}

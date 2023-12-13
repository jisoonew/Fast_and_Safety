package com.fs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.fs.model.ManagerVO;
import com.fs.model.Storage_ReserveVO;

@Repository // DAO라고 명시
public class Storage_ReserveDAOImpl implements Storage_ReserveDAO {
    @Inject // 의존관계를 자동으로 연결(JAVA에서 제공) ==@autowired (Spring에서 제공)
    private SqlSession sqlSession;
   
   
    private static final String namespace = "com.fs.mapper.StorageMapper";
                                            //memberMapper.xml의 namespace값
    
   
    @Override
    public List<Storage_ReserveVO> SR_print(Storage_ReserveVO SRvo) {
        return sqlSession.selectList(namespace + ".SR_print", SRvo);
    }
    
    @Override
    public List<Storage_ReserveVO> SR_delete(String sr_id) {
        return sqlSession.selectList(namespace + ".SR_delete", sr_id);
    }
}

package com.fs.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fs.vo.Login_home_VO;
import com.fs.vo.Today_delivery_VO;
import com.fs.vo.kind_release_VO;
import com.fs.vo.review_VO;

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
    
    // 마이페이지 당일 배송 출력
    @Override
    public List<Today_delivery_VO> list(String session_ID) {
        return sqlSession.selectList(namespace + ".list_today_delivery", session_ID);
    }
    
 // 당일 배송 수령인 이름 출력
    @Override
    public List<Login_home_VO> user() throws Exception {
        return sqlSession.selectList(namespace + ".user");
    }
    
    // 당일 배송 출고 물품 출력
    @Override
    public List<kind_release_VO> kind_release(String session_ID) throws Exception {
    	Map<String, String> paramMap = new HashMap<>();
        paramMap.put("session_ID", session_ID);
        return sqlSession.selectList(namespace + ".kind_release", paramMap);
    }
    
    // 당일 배송 총 배송비 출력
    @Override
    public List<Today_delivery_VO> deliverySum(String session_ID) throws Exception {
        return sqlSession.selectList(namespace + ".deliverySum", session_ID);
    }
    
    public List<Today_delivery_VO> delivery_date(String session_ID, String year, String month, String date) throws Exception {
        if (session_ID == null || year == null || month == null || date == null) {
            // Handle the case where one or more parameters are null, log an error, or return an appropriate result.
        }

        Map<String, String> paramMap = new HashMap<>();
        paramMap.put("session_ID", session_ID);
        paramMap.put("year", year);
        paramMap.put("month", month);
        paramMap.put("date", date);

        return sqlSession.selectList(namespace + ".delivery_date", paramMap);
    }

	@Override
	public List<review_VO> selectsearch(review_VO reviewvo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".selectsearch");
	}

}
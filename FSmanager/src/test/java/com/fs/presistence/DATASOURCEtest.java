package com.fs.presistence;

import java.sql.Connection;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")

public class DATASOURCEtest {
	
    @Autowired
    private DataSource dataSource;
    
    @Autowired private 
    SqlSessionFactory sqlSessionFactory;
    
    @Test
    public void testConnection() {
      
        try(
        		Connection con = dataSource.getConnection();
        		SqlSession session = sqlSessionFactory.openSession();
        	){
            
            System.out.println("con = " + con);
            System.out.println("session = " + session);
            
        } catch(Exception e) {
            
            e.printStackTrace();
            
        }
        
    }
}

//성공시 con = HikariProxyConnection@1176164144 wrapping com.mysql.cj.jdbc.ConnectionImpl@4ee203eb 가 나온다.
//성공시 session = org.apache.ibatis.session.defaults.DefaultSqlSession@59e505b2 가 나온다.
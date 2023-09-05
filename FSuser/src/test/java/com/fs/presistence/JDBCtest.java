package com.fs.presistence;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;



public class JDBCtest {
	
	static { 
        try { 
            Class.forName("com.mysql.cj.jdbc.Driver"); 
        } catch(Exception e) { 
            e.printStackTrace(); 
        } 
    } 
    
    @Test 
    public void testConnection() { 
        try(Connection con = DriverManager.getConnection( 
                "jdbc:mysql://localhost:3306/fs?serverTimezone=Asia/Seoul", 
                "root", 
                "1234")){ 
            System.out.println(con); 
        } catch (Exception e) { 
            fail(e.getMessage()); 
        } 
    
    }   
}

//처음에 SpringJUnit4ClassRunner랑 @ContextConfiguration 에서 임포트가 안되는 오류가 남
//pom.xml 파일에서 spring test 부분의 test scope를 주석처리
//pom.xml 파일에서 junit test 부분의 test scope를 작성
//오류 해결

//성공시 com.mysql.cj.jdbc.ConnectionImpl@5762806e 가 나온다.
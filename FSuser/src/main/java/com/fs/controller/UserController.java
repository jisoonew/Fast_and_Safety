package com.fs.controller;

import java.time.LocalDate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fs.service.UserService;
import com.fs.vo.UserVO;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping(value = "/user")
@Log4j
public class UserController {
	
	@Autowired
	private UserService userservice;
	
    @Autowired
    private BCryptPasswordEncoder pwEncoder;
	
	//회원가입 페이지 이동
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public void joinGET() {
		
		//log.info("회원가입 페이지 진입");
		
	}
	
	// 아이디 중복 검사
	@RequestMapping(value = "/userIdChk", method = RequestMethod.POST)
	@ResponseBody
	public String userIdChkPOST(String u_id) throws Exception{
		
		//log.info("userIdChk() 진입");
		
		int result = userservice.idCheck(u_id);
		
		//log.info("결과값 = " + result);
		
		if(result != 0) {
			
			//result = 0이 아니면 , fail, 중복 아이디 존재
			return "fail";	// 중복 아이디가 존재
			
		} else {
			
			//result = 0이면 , success, 아이디 사용 가능
			return "success";	// 중복 아이디 x
			
		}	
		
	} // userIdChkPOST() 종료
	
	
	@RequestMapping(value = "join", method = RequestMethod.POST)
	public String joinPOST(UserVO user) throws Exception{
		
        String rawPw = "";            // 인코딩 전 비밀번호
        String encodePw = "";        // 인코딩 후 비밀번호
        
        rawPw = user.getU_pw();            // 비밀번호 데이터 얻음
        encodePw = pwEncoder.encode(rawPw);        // 비밀번호 인코딩
        user.setU_pw(encodePw);            // 인코딩된 비밀번호 member객체에 다시 저장
        LocalDate now = LocalDate.now();
        user.setU_join_date(now);
        
        /* 회원가입 쿼리 실행 */
		userservice.userJoin(user);

		
		return "redirect:/user/login";
		
	}
	
	//로그인 페이지 이동
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public void loginGET() {
		
		//log.info("로그인 페이지 진입");
		
	}
	
    /* 로그인 */
    @RequestMapping(value="login", method=RequestMethod.POST)
    public String loginPOST(HttpServletRequest request,UserVO user, RedirectAttributes rttr,Model model) throws Exception{
        
		/*
		 * System.out.println("login 메서드 진입"); System.out.println("전달된 데이터 : " + user);
		 * 
		 * HttpSession session = request.getSession(); UserVO lvo =
		 * userservice.userLogin(user);
		 * 
		 * if(lvo == null) { // 일치하지 않는 아이디, 비밀번호 입력 경우
		 * 
		 * int result = 0; rttr.addFlashAttribute("result", result); return
		 * "redirect:/login";
		 * 
		 * }
		 * 
		 * session.setAttribute("user", lvo); // 일치하는 아이디, 비밀번호 경우 (로그인 성공)
		 * 
		 * return "redirect:/login_home";
		 */
    	
        HttpSession session = request.getSession();
        String rawPw = "";
        String encodePw = "";
    
        UserVO lvo = userservice.userLogin(user);    // 제출한아이디와 일치하는 아이디 있는지 
        
        if(lvo != null) {    // 일치하는 아이디 존재시
            
        	//log.info("일치하는 아이디 존재");
        	
            rawPw = user.getU_pw();    // 사용자가 제출한 비밀번호
            encodePw = lvo.getU_pw();  // 데이터베이스에 저장한 인코딩된 비밀번호
            //log.info("입력한 비밀번호 : " + rawPw);
            //log.info("인코딩 후 비밀번호 : " + encodePw);

            
            if(pwEncoder.matches(rawPw, encodePw)) {    // 비밀번호 일치여부 판단
                
            	//log.info("비밀번호 일치");
                lvo.setU_pw("");                    // 인코딩된 비밀번호 정보 지움
                session.setAttribute("user", lvo);  // session에 사용자의 정보 저장
                String session_ID = lvo.getU_id(); 
                String session_phone = lvo.getU_phone();
                String session_name = lvo.getU_name();
                String session_company_address = lvo.getU_company_address();
                String u_detail_address = lvo.getU_detail_address();

                session.setAttribute("session_ID",session_ID);
                session.setAttribute("session_phone",session_phone);
                session.setAttribute("name",session_name);
                session.setAttribute("address",session_company_address);
                session.setAttribute("u_detail_address",u_detail_address);
				
                return "redirect:/main_login";      // 메인페이지 이동
                
                
            } else {

            	//log.info("비밀번호 불일치");
                rttr.addFlashAttribute("result", 0);            
                return "redirect:/user/login";    // 로그인 페이지로 이동
                
            }
            
        } else {                    // 일치하는 아이디가 존재하지 않을 시 (로그인 실패)
            
        	//log.info("로그인 실패");
            rttr.addFlashAttribute("result", 0);            
            return "redirect:/user/login";    // 로그인 페이지로 이동
            
        }
    }
    
	//아이디 찾기 페이지 이동
	@RequestMapping(value = "find_id", method = RequestMethod.GET)
	public void findidGET() {
		
		//log.info("아이디 찾기 페이지 진입");
		
	}
	
	//비밀번호 찾기 페이지 이동
	@RequestMapping(value = "find_pw", method = RequestMethod.GET)
	public void findpwGET() {
		
		//log.info("비밀번호 찾기 페이지 진입");
		
	}
	
    /* 메인페이지 로그아웃 */
    @RequestMapping(value="logout.do", method=RequestMethod.GET)
    public String logoutMainGET(HttpServletRequest request) throws Exception{
        
        //logger.info("logoutMainGET메서드 진입");
        
        HttpSession session = request.getSession();
        
        session.invalidate();
        
        return "redirect:/main_logino";        
        
    }
}
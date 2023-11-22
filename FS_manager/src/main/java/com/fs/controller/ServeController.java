package com.fs.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fs.model.ManagerVO;
import com.fs.service.ManagerService;

@Controller
public class ServeController {

	private static final Logger logger = LoggerFactory.getLogger(ServeController.class);
	
	@Autowired
	private ManagerService managerservice;
	
    /* 로그인 */
    @RequestMapping(value="login", method=RequestMethod.POST)
    public String loginPOST(HttpServletRequest request, ManagerVO manager, RedirectAttributes rttr) throws Exception{
        
        HttpSession session = request.getSession();
        ManagerVO lvo = managerservice.managerLogin(manager);
        
       if(lvo == null) {                                // 일치하지 않는 아이디, 비밀번호 입력 경우
            int result = 0;
            rttr.addFlashAttribute("result", result);
            return "redirect:/login";
            
        }
        
        session.setAttribute("manager", lvo);             // 일치하는 아이디, 비밀번호 경우 (로그인 성공)
        
        return "redirect:/admin_main";
        
    }
    
    /* 로그아웃 */
    @RequestMapping(value="logout", method=RequestMethod.GET)
    public String logoutMainGET(HttpServletRequest request) throws Exception{

        
        logger.info("logoutMainGET메서드 진입");
        
        HttpSession session = request.getSession();
        session.invalidate();
        
        return "redirect:/login";
    }
}

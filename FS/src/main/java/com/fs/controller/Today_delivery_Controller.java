package com.fs.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fs.dao.Today_delivery_DAO;
import com.fs.vo.Today_delivery_VO;

@Controller
public class Today_delivery_Controller {
	@Inject
    private Today_delivery_DAO dao;
   
    @RequestMapping(value = "/input", method = RequestMethod.GET)
    public void today_delivery_Controller(){
        Today_delivery_VO vo = new Today_delivery_VO();
        vo.setU_id("33");
        vo.setTd_name("지현222");
        vo.setTd_phone("010-9296-8620");
        vo.setTd_volume(1);
        vo.setTd_address("서울 광진구2");
       
        dao.insert_today_delivery(vo);
    }
}

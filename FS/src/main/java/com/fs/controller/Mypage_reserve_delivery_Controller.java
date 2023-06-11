package com.fs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Mypage_reserve_delivery_Controller {
    @RequestMapping(value = "/mypage_reserve_delivery")
    public String get_home(Model model) throws Exception{
    	return "/mypage_reserve_delivery";
    }
}

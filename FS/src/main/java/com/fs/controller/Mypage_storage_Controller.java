package com.fs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Mypage_storage_Controller {
    @RequestMapping(value = "/mypage_storage")
    public String get_home(Model model) throws Exception{
    	return "/mypage_storage";
    }
}

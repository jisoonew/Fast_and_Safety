package com.fs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Password_Controller {
    @RequestMapping(value = "/password")
    public String get_home(Model model) throws Exception{
    	return "/password";
    }
}

package com.fs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Id_Controller {
    @RequestMapping(value = "/id")
    public String get_home(Model model) throws Exception{
    	return "/id";
    }
}

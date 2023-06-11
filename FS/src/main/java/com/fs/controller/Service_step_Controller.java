package com.fs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Service_step_Controller {
    @RequestMapping(value = "/service_step")
    public String get_home(Model model) throws Exception{
    	return "/service_step";
    }
}

package com.fs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Not_service_step_Controller {
    @RequestMapping(value = "/not_service_step")
    public String get_home(Model model) throws Exception{
    	return "/not_service_step";
    }
}

package com.fs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Introduce_Controller {
    @RequestMapping(value = "/introduce")
    public String get_home(Model model) throws Exception{
    	return "/introduce";
    }
}

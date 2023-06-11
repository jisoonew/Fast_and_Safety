package com.fs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Reserve_delivery_Controller {
    @RequestMapping(value = "/reserve_delivery")
    public String get_home(Model model) throws Exception{
    	return "/reserve_delivery";
    }
}

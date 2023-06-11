package com.fs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Product_storage_Controller {
    @RequestMapping(value = "/product_storage")
    public String get_home(Model model) throws Exception{
    	return "/product_storage";
    }
}

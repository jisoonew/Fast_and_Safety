package com.fs.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fs.service.Routine_delivery_service;

@Controller
public class Ask_list_Controller {

    @RequestMapping(value = "/ask_list")
    public String get_home(Model model) throws Exception{
    	return "/ask_list";
    }
}

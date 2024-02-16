package com.houseofscientists.project1.controllers;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping
@Controller
public class SomeConroller {
    @RequestMapping("/hello")
    public String sayHello(Model page){
        page.addAttribute("user", "Dima");
        return "index";
    }
}

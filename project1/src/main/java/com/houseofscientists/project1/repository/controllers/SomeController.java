package com.houseofscientists.project1.repository.controllers;

import com.houseofscientists.project1.models.Questions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping
@Controller
public class SomeController {
    @RequestMapping("/")
    public String sayHello(Model page){
        page.addAttribute("user", "TEXT");
        page.addAttribute("button1", "button");
        return "index";
    }

    @RequestMapping("/right_answer")
    public String rightAnswer(Model page){
        page.addAttribute("user", "TEXT");
        page.addAttribute("button1", "button");
        return "sliderpage";
    }
}

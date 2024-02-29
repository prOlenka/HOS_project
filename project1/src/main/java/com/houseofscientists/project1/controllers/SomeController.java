package com.houseofscientists.project1.controllers;

import com.houseofscientists.project1.models.Questions;
import com.houseofscientists.project1.repository.QuestionsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping
@Controller
public class SomeController {
    private final QuestionsRepository questionsRepository;

    public SomeController(QuestionsRepository questionsRepository) {
        this.questionsRepository = questionsRepository;
    }


    @RequestMapping("/")
    public String sayHello(Model page){
        Iterable <Questions> posts = questionsRepository.findAll();
        page.addAttribute("prods", posts);
        page.addAttribute("button1", "button");
        return "index";
    }

    @RequestMapping("/right_answer")
    public String rightAnswer(Model page){
        return "sliderpage";
    }
}

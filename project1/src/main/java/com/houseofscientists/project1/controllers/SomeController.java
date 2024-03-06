package com.houseofscientists.project1.controllers;

import com.houseofscientists.project1.models.Questions;
import com.houseofscientists.project1.repository.QuestionsRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.Optional;

@RequestMapping
@Controller
public class SomeController {
    private final QuestionsRepository questionsRepository;

    public SomeController(QuestionsRepository questionsRepository) {
        this.questionsRepository = questionsRepository;
    }


    @RequestMapping("/")
    public String sayHello(Model page){
        Long i = 1L;//(long) (int) (Math.random() * 6);
//        Iterable<Questions> q = questionsRepository.findAll();
        Optional<Questions> posts = questionsRepository.findById(i);
        ArrayList<Questions> q = new ArrayList<>();
        posts.ifPresent(q::add);
        page.addAttribute("prods", q );
        return "question_start";
    }

    @RequestMapping("/answer")
    public String answer(Model page){
        // if --> right: wrong
        return "question_start";
    }

    @RequestMapping("/right_answer")
    public String rightAnswer(Model page){
        return "right_answer";
    }
    @RequestMapping("/wrong_answer")
    public String wrongAnswer(Model page){
        return "wrong_answer";
    }

    @RequestMapping("/explanation")
    public String explanation(Model page){
        return "explanation";
    }
}

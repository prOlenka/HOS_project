package com.houseofscientists.project1.controllers;

import com.houseofscientists.project1.repository.AnswersRepository;
import com.houseofscientists.project1.repository.QuestionsRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping
@Controller

public class SomeController {
    private final QuestionsRepository questionsRepository;
    private final AnswersRepository answersRepository;


    public SomeController(QuestionsRepository questionsRepository, AnswersRepository answersRepository) {
        this.questionsRepository = questionsRepository;
        this.answersRepository = answersRepository;
    }


    @RequestMapping("/")
    public String start(){
        return "start_page";
    }


    @RequestMapping("/question_start")
    public String sayHello(Model page){
        Long i = 1L; //= (int)(Math.random() * 6);

        page.addAttribute("que", questionsRepository.findById(1));
        page.addAttribute("ans", answersRepository.findByIdQuestions(i));

        return "question_start";
    }

    @GetMapping("/question_start/star")
    public String star(Model page){

        return "question_start";
    }
    @GetMapping("/question_start/mathematics")
    public String mathematics(Model page){

        return "question_start";
    }
    @GetMapping("/question_start/biology")
    public String biology(Model page){

        return "question_start";
    }
    @GetMapping("/question_start/chess")
    public String chess(Model page){
        return "question_start";
    }
    @GetMapping("/question_start/physics")
    public String physics(Model page){

        return "question_start";
    }

    @GetMapping("/question_start/globe")
    public String globe(Model page){

        return "question_start";
    }
    @GetMapping("/question_start/registry")
    public String registry(Model page){

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

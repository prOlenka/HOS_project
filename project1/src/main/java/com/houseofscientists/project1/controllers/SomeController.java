package com.houseofscientists.project1.controllers;

import com.houseofscientists.project1.repository.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping
@Controller

public class SomeController {
    private final QuestionsBiologyRepository questionsBiologyRepository;
    private final AnswersBiologyRepository answersBiologyRepository;
    private final QuestionsPhysicsRepository questionsPhysicsRepository;
    private final AnswersPhysicsRepository answersPhysicsRepository;
    private final QuestionsGeographyRepository questionsGeographyRepository;
    private final AnswersGeographyRepository answersGeographyRepository;

    public SomeController(QuestionsBiologyRepository questionsBiologyRepository, AnswersBiologyRepository answersBiologyRepository, QuestionsPhysicsRepository questionsPhysicsRepository, AnswersPhysicsRepository answersPhysicsRepository, QuestionsGeographyRepository questionsGeographyRepository, AnswersGeographyRepository answersGeographyRepository) {
        this.questionsBiologyRepository = questionsBiologyRepository;
        this.answersBiologyRepository = answersBiologyRepository;
        this.questionsPhysicsRepository = questionsPhysicsRepository;
        this.answersPhysicsRepository = answersPhysicsRepository;
        this.questionsGeographyRepository = questionsGeographyRepository;
        this.answersGeographyRepository = answersGeographyRepository;
    }

    @RequestMapping("/")
    public String start(){
        return "start_page";
    }


//    @RequestMapping("/question_start")
//    public String sayHello(Model page){
//        int i = 1; //= (int)(Math.random() * 6);
//
//        page.addAttribute("que", questionsBiologyRepository.findById(1));
//        page.addAttribute("ans", answersBiologyRepository.findByIdQuestions(i));
//
//        return "question_start";
//    }

    @GetMapping("/question_start/star")
    public String star(Model page){
        int i = 1; //= (int)(Math.random() * 6);

//        page.addAttribute("que", questionsAstrologyRepository.findById(1));
//        page.addAttribute("ans", answersAstrologyRepository.findByIdQuestions(i));

        return "question_start";
    }
    @GetMapping("/question_start/mathematics")
    public String mathematics(Model page){
        int i = 1; //= (int)(Math.random() * 6);

//        page.addAttribute("que", questionsMathematicsRepository.findById(1));
//        page.addAttribute("ans", answersMathematicsRepository.findByIdQuestions(i));

        return "question_start";
    }
    @GetMapping("/question_start/biology")
    public String biology(Model page){
        int i = 1; //= (int)(Math.random() * 6);

        page.addAttribute("que", questionsBiologyRepository.findById(1));
        page.addAttribute("ans", answersBiologyRepository.findByIdQuestions(i));

        return "question_start";
    }
    @GetMapping("/question_start/chess")
    public String chess(Model page){
        int i = 1; //= (int)(Math.random() * 6);

//        page.addAttribute("que", questionsChessRepository.findById(1));
//        page.addAttribute("ans", answersChessRepository.findByIdQuestions(i));
        return "question_start";
    }
    @GetMapping("/question_start/physics")
    public String physics(Model page){
        int i = 1; //= (int)(Math.random() * 6);

        page.addAttribute("que", questionsPhysicsRepository.findById(1));
        page.addAttribute("ans", answersPhysicsRepository.findByIdQuestions(i));

        return "question_start";
    }

    @GetMapping("/question_start/globe")
    public String globe(Model page){
        int i = 1; //= (int)(Math.random() * 6);

        page.addAttribute("que", questionsGeographyRepository.findById(1));
        page.addAttribute("ans", answersGeographyRepository.findByIdQuestions(Long.parseLong(String.valueOf(i))));

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

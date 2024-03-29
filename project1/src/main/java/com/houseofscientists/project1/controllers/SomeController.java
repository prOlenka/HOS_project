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
    private final RegisterRepository registerRepository;

    public SomeController(QuestionsBiologyRepository questionsBiologyRepository, AnswersBiologyRepository answersBiologyRepository, QuestionsPhysicsRepository questionsPhysicsRepository, AnswersPhysicsRepository answersPhysicsRepository, QuestionsGeographyRepository questionsGeographyRepository, AnswersGeographyRepository answersGeographyRepository, RegisterRepository registerRepository) {
        this.questionsBiologyRepository = questionsBiologyRepository;
        this.answersBiologyRepository = answersBiologyRepository;
        this.questionsPhysicsRepository = questionsPhysicsRepository;
        this.answersPhysicsRepository = answersPhysicsRepository;
        this.questionsGeographyRepository = questionsGeographyRepository;
        this.answersGeographyRepository = answersGeographyRepository;
        this.registerRepository = registerRepository;
    }

    @RequestMapping("/")
    public String start(){
        return "start_page";
    }

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
        int i = 2; //= (int)(Math.random() * 6);
        Long k = (long) i;

        page.addAttribute("que", questionsBiologyRepository.findById(2));
        page.addAttribute("ans", answersBiologyRepository.findAnswersBiologyByIdQuestions(k));

        return "question_start";
    }
    @GetMapping("/question_start/chess")
    public String chess(Model page){
        int i = 1; //= (int)(Math.random() * 6);
        Long k = (long) i;

//        page.addAttribute("que", questionsChessRepository.findById(1));
//        page.addAttribute("ans", answersChessRepository.findByIdQuestions(i));
        return "question_start";
    }
    @GetMapping("/question_start/physics")
    public String physics(Model page){
        Long i = 1L; //= (int)(Math.random() * 6);

        page.addAttribute("que", questionsPhysicsRepository.findById(1));
        page.addAttribute("ans", answersPhysicsRepository.findAnswersPhysicsByIdQuestions(1L));

        return "question_start";
    }

    @GetMapping("/question_start/globe")
    public String globe(Model page){
        int i = 1; //= (int)(Math.random() * 6);
        Long k = (long) i;

        page.addAttribute("que", questionsGeographyRepository.findById(i));
        page.addAttribute("ans", answersGeographyRepository.findByIdQuestions(k));

        return "question_start";
    }
    @GetMapping("/question_start/register")
    public String register(Model page){
        Long i = 1L; //= (int)(Math.random() * 6);
        page.addAttribute("description",registerRepository.findAllById(i));

        return "register";
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

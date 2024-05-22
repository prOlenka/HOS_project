package com.houseofscientists.project1.controllers;

import com.houseofscientists.project1.repository.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Random;

@RequestMapping
@Controller

public class SomeController {
    private final QuestionsBiologyRepository questionsBiologyRepository;
    private final AnswersBiologyRepository answersBiologyRepository;
    private final QuestionsPhysicsRepository questionsPhysicsRepository;
    private final AnswersPhysicsRepository answersPhysicsRepository;
    private final QuestionsGeographyRepository questionsGeographyRepository;
    private final AnswersGeographyRepository answersGeographyRepository;
    private final QuestionsMathRepository questionsMathRepository;
    private final AnswersMathRepository answersMathRepository;
    private final QuestionsStarRepository questionsStarRepository;
    private final AnswersGeographyRepository answersStarRepository;
    private final RegisterRepository registerRepository;

    public SomeController(QuestionsBiologyRepository questionsBiologyRepository, AnswersBiologyRepository answersBiologyRepository, QuestionsPhysicsRepository questionsPhysicsRepository, AnswersPhysicsRepository answersPhysicsRepository, QuestionsGeographyRepository questionsGeographyRepository, AnswersGeographyRepository answersGeographyRepository, QuestionsMathRepository questionsMathRepository, AnswersMathRepository answersMathRepository, QuestionsStarRepository questionsStarRepository, AnswersGeographyRepository answersStarRepository, RegisterRepository registerRepository) {
        this.questionsBiologyRepository = questionsBiologyRepository;
        this.answersBiologyRepository = answersBiologyRepository;
        this.questionsPhysicsRepository = questionsPhysicsRepository;
        this.answersPhysicsRepository = answersPhysicsRepository;
        this.questionsGeographyRepository = questionsGeographyRepository;
        this.answersGeographyRepository = answersGeographyRepository;
        this.questionsMathRepository = questionsMathRepository;
        this.answersMathRepository = answersMathRepository;
        this.questionsStarRepository = questionsStarRepository;
        this.answersStarRepository = answersStarRepository;
        this.registerRepository = registerRepository;
    }

    public static int getRandomNumberUsingNextInt(int max) {
        return new Random().nextInt(max - 1) + 1;
    }

    @RequestMapping("/")
    public String start(){
        return "start_page";
    }

    @GetMapping("/question_start/star")
    public String star(Model page){
        int i = getRandomNumberUsingNextInt(questionsStarRepository.findTopByOrderByIdDesc().get(0).getId() - 1);
        page.addAttribute("que", questionsStarRepository.findById(1));
        page.addAttribute("ans", answersStarRepository.findByIdQuestions((long) i));

        return "question_start";
    }
    @GetMapping("/question_start/mathematics")

    public String mathematics(Model page){
        int i = getRandomNumberUsingNextInt(questionsMathRepository.findTopByOrderByIdDesc().get(0).getId() - 1);

        page.addAttribute("que", questionsMathRepository.findById(1));
        page.addAttribute("ans", answersMathRepository.findAnswersMathByIdQuestions((long) i));

        return "question_start";
    }
    @GetMapping("/question_start/biology")

    public String biology(Model page){
        int i = getRandomNumberUsingNextInt(questionsBiologyRepository.findTopByOrderByIdDesc().get(0).getId() - 1);

        page.addAttribute("que", questionsBiologyRepository.findById(i));
        page.addAttribute("ans", answersBiologyRepository.findAnswersBiologyByIdQuestions((long) i));

        return "question_start";
    }
    @GetMapping("/question_start/chess")
    public String chess(Model page){
        return "question_start";
    }
    @GetMapping("/question_start/physics")
    public String physics(Model page){
        int i = getRandomNumberUsingNextInt(questionsMathRepository.findTopByOrderByIdDesc().get(0).getId() - 1);

        page.addAttribute("que", questionsPhysicsRepository.findById(i));
        page.addAttribute("ans", answersPhysicsRepository.findAnswersPhysicsByIdQuestions((long) i));

        return "question_start";
    }

    @GetMapping("/question_start/globe")
    public String globe(Model page){
        int i = getRandomNumberUsingNextInt(questionsMathRepository.findTopByOrderByIdDesc().get(0).getId() - 1);
        
        page.addAttribute("que", questionsGeographyRepository.findById(i));
        page.addAttribute("ans", answersGeographyRepository.findByIdQuestions((long) i));

        return "question_start";
    }
    @GetMapping("/question_start/register")
    public String register(Model page){
        int i = 0;
        while(i!=74){
            i++;
        }
        System.out.println(i);
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

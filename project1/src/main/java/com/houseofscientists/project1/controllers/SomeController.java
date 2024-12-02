package com.houseofscientists.project1.controllers;

import com.houseofscientists.project1.database.*;
import com.houseofscientists.project1.dto.QuestionDTO;
import com.houseofscientists.project1.models.Astronomy;
import com.houseofscientists.project1.models.Biology;
import com.houseofscientists.project1.models.Geography;
import com.houseofscientists.project1.models.Math;
import com.houseofscientists.project1.models.Physics;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RequestMapping
@Controller
public class SomeController {

    private final AstronomyDatabase astronomyDatabase;
    private final BiologyDatabase biologyDatabase;
    private final GeographyDatabase geographyDatabase;
    private final MathDatabase mathDatabase;
    private final PhysicsDatabase physicsDatabase;

    public SomeController(
            AstronomyDatabase astronomyDatabase,
            BiologyDatabase biologyDatabase,
            GeographyDatabase geographyDatabase,
            MathDatabase mathDatabase,
            PhysicsDatabase physicsDatabase
    ) {
        this.astronomyDatabase = astronomyDatabase;
        this.biologyDatabase = biologyDatabase;
        this.geographyDatabase = geographyDatabase;
        this.mathDatabase = mathDatabase;
        this.physicsDatabase = physicsDatabase;
    }

    @RequestMapping("/")
    public String start() {
        return "start_page";
    }

    @GetMapping("/question_start/astronomy")
    public String astronomy(Model page) {
        Astronomy question = astronomyDatabase.getRandomQuestion();  // Получаем случайный вопрос
        List<String> answers = List.of(question.getRightAnswer(), question.getS1(), question.getS2(), question.getS3());

        page.addAttribute("que", question.getQuestion());  // Вопрос
        page.addAttribute("ans", answers);  // Ответы

        return "question_start";
    }

    @GetMapping("/question_start/biology")
    public String biology(Model page) {
        Biology question = biologyDatabase.getRandomQuestion();  // Получаем случайный вопрос
        List<String> answers = List.of(question.getRightAnswer(), question.getS1(), question.getS2(), question.getS3());

        page.addAttribute("que", question.getQuestion());  // Вопрос
        page.addAttribute("ans", answers);  // Ответы

        return "question_start";  // Возвращаем страницу с вопросом
    }

    @GetMapping("/question_start/geography")
    public String geography(Model page) {
        Geography question = geographyDatabase.getRandomQuestion();  // Получаем случайный вопрос
        List<String> answers = List.of(question.getRightAnswer(), question.getS1(), question.getS2(), question.getS3());

        page.addAttribute("que", question.getQuestion());  // Вопрос
        page.addAttribute("ans", answers);  // Ответы

        return "question_start";  // Возвращаем страницу с вопросом
    }

    @GetMapping("/question_start/mathematics")
    public String mathematics(Model page) {
        Math question = mathDatabase.getRandomQuestion();  // Получаем случайный вопрос
        List<String> answers = List.of(question.getRightAnswer(), question.getS1(), question.getS2(), question.getS3());

        page.addAttribute("que", question.getQuestion());  // Вопрос
        page.addAttribute("ans", answers);  // Ответы

        return "question_start";  // Возвращаем страницу с вопросом
    }

    @GetMapping("/question_start/physics")
    public String physics(Model page) {
        Physics question = physicsDatabase.getRandomQuestion();  // Получаем случайный вопрос
        List<String> answers = List.of(question.getRightAnswer(), question.getS1(), question.getS2(), question.getS3());

        page.addAttribute("que", question.getQuestion());  // Вопрос
        page.addAttribute("ans", answers);  // Ответы

        return "question_start";  // Возвращаем страницу с вопросом
    }

    @GetMapping("/question_start/register")
    public String register(Model model) {
        List<RegisterItem> items = new ArrayList<>();

        items.add(new RegisterItem("Image 1", "/images/register/0_MAL5924.jpg", "This is the first image"));
        items.add(new RegisterItem("Image 2", "/images/register/0_MAL5951.jpg", "This is the second image"));
        items.add(new RegisterItem("Image 3", "/images/register/0_MAL5962.jpg", "This is the third image"));
        items.add(new RegisterItem("Image 4", "/images/register/0_MAL5972.jpg", "This is the 4 image"));


        model.addAttribute("items", items);
        return "register";
    }


//    @RequestMapping("/right_answer")
//    public String rightAnswer(Model page) {
//        String rightAnswer =
//        page.addAttribute("ans", answers);  // Ответы
//        return "right_answer";  // Страница с правильным ответом
//    }

    @PostMapping("/check")
    public String checkAnswer(
            @RequestParam("userAnswer") String userAnswer,
            @ModelAttribute("question") QuestionDTO questionDTO,
            Model model) {

        if (userAnswer.equalsIgnoreCase(questionDTO.getRightAnswer())) {
            model.addAttribute("explanation", questionDTO.getExplanation());
            return "right_answer"; // Переход на страницу с объяснением
        } else {
            model.addAttribute("errorMessage", "Неправильный ответ, попробуйте ещё раз");
            model.addAttribute("question", questionDTO);
            return "question_start"; // Возврат на страницу с вопросом
        }
    }
}

//    @GetMapping("/question_start/chess")
//    public String chess(Model page) {
//        Сhess question = chessDatabase.getRandomQuestion();  // Получаем случайный вопрос
//        List<String> answers = List.of(question.getRightAnswer(), question.getS1(), question.getS2(), question.getS3());
//
//        page.addAttribute("que", question.getQuestion());  // Вопрос
//        page.addAttribute("ans", answers);  // Ответы
//
//        return "question_start";  // Возвращаем страницу с вопросом
//    }


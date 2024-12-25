package com.houseofscientists.project1.controllers;

import com.houseofscientists.project1.database.*;
import com.houseofscientists.project1.models.*;
import com.houseofscientists.project1.models.Math;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
    String rightAnswer;
    String explanation;
    String model;

    @RequestMapping("/")
    public String start() {
        return "start_page";
    }

    @GetMapping("/question_start/astronomy")
    public String astronomy(Model page) {
        Astronomy question = astronomyDatabase.getRandomQuestion();
        List<String> answers = List.of(question.getS(), question.getS1(), question.getS2(), question.getS3());
        rightAnswer = question.getRightAnswer();
        explanation = question.getExplanation();
        model = "astronomy";

        page.addAttribute("que", question.getQuestion());
        page.addAttribute("ans", answers);  // Ответы

        return "question_start";
    }

    @GetMapping("/question_start/biology")
    public String biology(Model page) {
        Biology question = biologyDatabase.getRandomQuestion();  // Получаем случайный вопрос
        List<String> answers = List.of(question.getS(), question.getS1(), question.getS2(), question.getS3());
        rightAnswer = question.getRightAnswer();
        explanation = question.getExplanation();
        model = "biology";

        page.addAttribute("que", question.getQuestion());  // Вопрос
        page.addAttribute("ans", answers);  // Ответы

        return "question_start";  // Возвращаем страницу с вопросом
    }

    @GetMapping("/question_start/geography")
    public String geography(Model page) {
        Geography question = geographyDatabase.getRandomQuestion();  // Получаем случайный вопрос
        List<String> answers = List.of(question.getS(), question.getS1(), question.getS2(), question.getS3());
        rightAnswer = question.getRightAnswer();
        explanation = question.getExplanation();
        model = "geography";

        page.addAttribute("que", question.getQuestion());  // Вопрос
        page.addAttribute("ans", answers);  // Ответы

        return "question_start";  // Возвращаем страницу с вопросом
    }

    @GetMapping("/question_start/mathematics")
    public String mathematics(Model page) {
        Math question = mathDatabase.getRandomQuestion();  // Получаем случайный вопрос
        List<String> answers = List.of(question.getS(), question.getS1(), question.getS2(), question.getS3());
        rightAnswer = question.getRightAnswer();
        explanation = question.getExplanation();
        model = "mathematics";

        page.addAttribute("que", question.getQuestion());  // Вопрос
        page.addAttribute("ans", answers);  // Ответы

        return "question_start";  // Возвращаем страницу с вопросом
    }

    @GetMapping("/question_start/physics")
    public String physics(Model page) {
        Physics question = physicsDatabase.getRandomQuestion();  // Получаем случайный вопрос
        List<String> answers = List.of(question.getS(), question.getS1(), question.getS2(), question.getS3());
        rightAnswer = question.getRightAnswer();
        explanation = question.getExplanation();
        model = "physics";

        page.addAttribute("que", question.getQuestion());  // Вопрос
        page.addAttribute("ans", answers);  // Ответы

        return "question_start";
    }

    @PostMapping("/check_answer")
    @ResponseBody
    public String checkAnswer(@RequestParam("selectedAnswer") String selectedAnswer, Model page) {
        if (selectedAnswer.equals(rightAnswer)) {
            return "right_answer";  // Клиент проверяет эту метку и выполняет редирект вручную
        } else {
            page.addAttribute("error", "Неправильный ответ, попробуйте еще раз.");
            return "question_start :: error";  // Возвращаем HTML для обновления части страницы
        }
    }

    @GetMapping("/right_answer")
    public String rightAnswer(Model page) {
        page.addAttribute("ans", rightAnswer);
        page.addAttribute("explanation", explanation);
        page.addAttribute("model", model);
        return "right_answer";
    }

    @GetMapping("/question_start/register")
    public String register(Model model) {
        Register register = new Register();

        model.addAttribute("items", register.addToRegister());
        return "register";
    }
}

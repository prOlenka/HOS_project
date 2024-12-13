package com.houseofscientists.project1.controllers;

import com.houseofscientists.project1.database.*;
import com.houseofscientists.project1.models.*;
import com.houseofscientists.project1.models.Math;
import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.layout.*;
import javafx.stage.Stage;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class SomeController {

    private final AstronomyDatabase astronomyDatabase;
    private final BiologyDatabase biologyDatabase;
    private final GeographyDatabase geographyDatabase;
    private final MathDatabase mathDatabase;
    private final PhysicsDatabase physicsDatabase;

    String rightAnswer;
    String explanation;
    String model;

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

    private void showAstronomyQuestion(Stage stage) {
        Astronomy question = astronomyDatabase.getRandomQuestion();
        List<String> answers = List.of(question.getRightAnswer(), question.getS1(), question.getS2(), question.getS3());
        rightAnswer = question.getRightAnswer();
        explanation = question.getExplanation();
        model = "astronomy";

        VBox questionBox = new VBox(10);
        Label questionLabel = new Label(question.getQuestion());
        ListView<String> answerList = new ListView<>();
        answerList.getItems().addAll(answers);
        Button checkButton = new Button("Check Answer");

        checkButton.setOnAction(e -> checkAnswer(answerList.getSelectionModel().getSelectedItem(), stage));

        questionBox.getChildren().addAll(questionLabel, answerList, checkButton);
        Scene questionScene = new Scene(questionBox, 400, 300);
        stage.setScene(questionScene);
    }

    private void showBiologyQuestion(Stage stage) {
        Biology question = biologyDatabase.getRandomQuestion();
        List<String> answers = List.of(question.getRightAnswer(), question.getS1(), question.getS2(), question.getS3());
        rightAnswer = question.getRightAnswer();
        explanation = question.getExplanation();
        model = "biology";

        VBox questionBox = new VBox(10);
        Label questionLabel = new Label(question.getQuestion());
        ListView<String> answerList = new ListView<>();
        answerList.getItems().addAll(answers);
        Button checkButton = new Button("Check Answer");

        checkButton.setOnAction(e -> checkAnswer(answerList.getSelectionModel().getSelectedItem(), stage));

        questionBox.getChildren().addAll(questionLabel, answerList, checkButton);
        Scene questionScene = new Scene(questionBox, 400, 300);
        stage.setScene(questionScene);
    }

    private void showGeographyQuestion(Stage stage) {
        Geography question = geographyDatabase.getRandomQuestion();
        List<String> answers = List.of(question.getRightAnswer(), question.getS1(), question.getS2(), question.getS3());
        rightAnswer = question.getRightAnswer();
        explanation = question.getExplanation();
        model = "geography";

        VBox questionBox = new VBox(10);
        Label questionLabel = new Label(question.getQuestion());
        ListView<String> answerList = new ListView<>();
        answerList.getItems().addAll(answers);
        Button checkButton = new Button("Check Answer");

        checkButton.setOnAction(e -> checkAnswer(answerList.getSelectionModel().getSelectedItem(), stage));

        questionBox.getChildren().addAll(questionLabel, answerList, checkButton);
        Scene questionScene = new Scene(questionBox, 400, 300);
        stage.setScene(questionScene);
    }

    private void showMathematicsQuestion(Stage stage) {
        Math question = mathDatabase.getRandomQuestion();
        List<String> answers = List.of(question.getRightAnswer(), question.getS1(), question.getS2(), question.getS3());
        rightAnswer = question.getRightAnswer();
        explanation = question.getExplanation();
        model = "mathematics";

        VBox questionBox = new VBox(10);
        Label questionLabel = new Label(question.getQuestion());
        ListView<String> answerList = new ListView<>();
        answerList.getItems().addAll(answers);
        Button checkButton = new Button("Check Answer");

        checkButton.setOnAction(e -> checkAnswer(answerList.getSelectionModel().getSelectedItem(), stage));

        questionBox.getChildren().addAll(questionLabel, answerList, checkButton);
        Scene questionScene = new Scene(questionBox, 400, 300);
        stage.setScene(questionScene);
    }

    private void showPhysicsQuestion(Stage stage) {
        Physics question = physicsDatabase.getRandomQuestion();
        List<String> answers = List.of(question.getRightAnswer(), question.getS1(), question.getS2(), question.getS3());
        rightAnswer = question.getRightAnswer();
        explanation = question.getExplanation();
        model = "physics";

        VBox questionBox = new VBox(10);
        Label questionLabel = new Label(question.getQuestion());
        ListView<String> answerList = new ListView<>();
        answerList.getItems().addAll(answers);
        Button checkButton = new Button("Check Answer");

        checkButton.setOnAction(e -> checkAnswer(answerList.getSelectionModel().getSelectedItem(), stage));

        questionBox.getChildren().addAll(questionLabel, answerList, checkButton);
        Scene questionScene = new Scene(questionBox, 400, 300);
        stage.setScene(questionScene);
    }

    private void checkAnswer(String selectedAnswer, Stage stage) {
        if (selectedAnswer.equals(rightAnswer)) {
            showRightAnswerPage(stage);
        } else {
            showErrorPage(stage);
        }
    }

    private void showRightAnswerPage(Stage stage) {
        VBox rightAnswerBox = new VBox(10);
        rightAnswerBox.getChildren().addAll(
                new Label("Correct Answer: " + rightAnswer),
                new Label("Explanation: " + explanation)
        );
        Scene rightAnswerScene = new Scene(rightAnswerBox, 400, 300);
        stage.setScene(rightAnswerScene);
    }

    private void showErrorPage(Stage stage) {
        VBox errorBox = new VBox(10);
        Label errorLabel = new Label("Wrong answer, try again.");
        Button retryButton = new Button("Retry");
        retryButton.setOnAction(e -> showAstronomyQuestion(stage));

        errorBox.getChildren().addAll(errorLabel, retryButton);
        Scene errorScene = new Scene(errorBox, 400, 300);
        stage.setScene(errorScene);
    }

    private void showRegisterPage(Stage stage) {
        VBox registerBox = new VBox(10);
        Register register = new Register();

        ListView<List<RegisterItem>> itemsList = new ListView<>();
        itemsList.getItems().addAll(register.addToRegister());

        Button nextButton = new Button("Next");
        nextButton.setOnAction(e -> showAstronomyQuestion(stage));

        registerBox.getChildren().addAll(new Label("Register Items:"), itemsList, nextButton);
        Scene registerScene = new Scene(registerBox, 400, 300);
        stage.setScene(registerScene);
    }
    }

package com.houseofscientists.project1.database;

import com.houseofscientists.project1.models.Math;
import lombok.Getter;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@Service
@Getter
public class MathDatabase {

    private final List<Math> questions;

    public MathDatabase() {
        questions = new ArrayList<>();
        populateDatabase();
    }

    private void populateDatabase() {
        questions.add(new Math(1,
                "Чему равно значение выражения 2 + 2?",
                "2 + 2 равно 4, так как это базовая арифметическая операция сложения.",
                "4",
                "4", "3", "5", "6"));

        questions.add(new Math(2,
                "Чему равно значение выражения 5 × 3?",
                "5 умножить на 3 равно 15, так как это базовая операция умножения.",
                "15",
                "10", "15", "20", "25"));

        questions.add(new Math(3,
                "Сколько граней у куба?",
                "Куб имеет 6 граней, так как каждая сторона куба является квадратом.",
                "6",
                "8", "6", "4", "12"));

        questions.add(new Math(4,
                "Чему равно значение выражения 10 ÷ 2?",
                "10 разделить на 2 равно 5, так как 10 делится на 2 нацело.",
                "5",
                "2", "7", "5", "3"));

        questions.add(new Math(5,
                "Чему равно значение выражения 7 - 4?",
                "7 минус 4 равно 3, так как это базовая арифметическая операция вычитания.",
                "3",
                "3", "5", "2", "4"));

        questions.add(new Math(6,
                "Чему равно значение выражения 9 × 9?",
                "9 умножить на 9 равно 81, так как это таблица умножения.",
                "81",
                "72", "81", "64", "90"));

        questions.add(new Math(7,
                "Сколько углов у треугольника?",
                "Треугольник всегда имеет 3 угла.",
                "3",
                "3", "4", "2", "5"));

        questions.add(new Math(8,
                "Чему равно значение выражения 100 ÷ 10?",
                "100 разделить на 10 равно 10, так как 100 делится на 10 нацело.",
                "10",
                "12", "10", "8", "14"));

        questions.add(new Math(9,
                "Чему равно значение выражения 12 + 15?",
                "12 плюс 15 равно 27.",
                "27",
                "30", "27", "25", "28"));

        questions.add(new Math(10,
                "Сколько дней в невисокосном году?",
                "В невисокосном году 365 дней.",
                "365",
                "366", "365", "364", "360")); }

    public Math getRandomQuestion() {
        int randomIndex = getRandomNumberUsingNextInt(questions.size());
        return questions.get(randomIndex);
    }

    public static int getRandomNumberUsingNextInt(int max) {
        return new Random().nextInt(max);
    }

}

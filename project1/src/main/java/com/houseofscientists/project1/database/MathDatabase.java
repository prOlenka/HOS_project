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
        questions.add(new Math(1, "Сколько будет 2 + 2?", "4", "3", "5", "6"));
        questions.add(new Math(2, "Что такое производная функции?", "Предел изменения функции при бесконечно малом изменении аргумента.", "Интеграл", "Операция сложения", "Множитель"));
        questions.add(new Math(3, "Какой из этих чисел является простым?", "7", "4", "6", "9"));
        questions.add(new Math(4, "Что такое косинус угла в прямоугольном треугольнике?", "Отношение прилежащего катета к гипотенузе", "Отношение противоположного катета к гипотенузе", "Произведение катетов", ""));
        questions.add(new Math(5, "Что такое интеграл?", "Операция нахождения площади под кривой.", "Процесс деления", "Решение уравнений", "Площадь прямоугольника"));
        questions.add(new Math(6, "Какое из этих чисел является квадратом целого числа?", "16", "15", "14", "17"));
        questions.add(new Math(7, "Как называется система счисления, используемая в компьютерах?", "Двоичная система", "Шестнадцатеричная система", "Десятичная система",""));
        questions.add(new Math(8, "Чему равен периметр квадрата со стороной 5 см?", "20 см", "25 см", "10 см", "15 см"));
        questions.add(new Math(9, "Чем является число Пи?", "Отношением длины окружности к её диаметру", "Площадью круга", "Объемом шара", "Длиной диагонали"));
        questions.add(new Math(10, "Что такое гипотенуза?", "Самая длинная сторона прямоугольного треугольника", "Кратчайшая сторона прямоугольного треугольника", "Сторона квадрата",""));
    }

    public Math getRandomQuestion() {
        int randomIndex = getRandomNumberUsingNextInt(questions.size());
        return questions.get(randomIndex);
    }

    public static int getRandomNumberUsingNextInt(int max) {
        return new Random().nextInt(max);
    }

}

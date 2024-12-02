package com.houseofscientists.project1.database;

import com.houseofscientists.project1.models.Astronomy;
import jakarta.annotation.PostConstruct;
import lombok.Data;
import lombok.Getter;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@Service
@Component
@Getter
public class AstronomyDatabase {

    private final List<Astronomy> questions;

    public AstronomyDatabase() {
        questions = new ArrayList<>();
    }

    @PostConstruct
    private void populateDatabase() {
        questions.add(new Astronomy(1, "Какая планета самая большая в нашей Солнечной системе?",
                "Юпитер — самая большая планета в Солнечной системе, ее масса более двух с половиной раз больше массы всех остальных планет вместе взятых.",
                "Юпитер", "Земля", "Марс", "Сатурн"));

        questions.add(new Astronomy(2, "Какое небесное тело является ближайшим к Земле?",
                "Луна — естественный спутник Земли, находящийся на расстоянии около 384 400 км от нее.",
                "Луна", "Солнце", "Меркурий", "Венера"));

        questions.add(new Astronomy(3, "Что такое черная дыра?",
                "Черная дыра — это область в пространстве, где гравитация настолько сильна, что даже свет не может вырваться.",
                "Черная дыра", "Красный гигант", "Нейтронная звезда", "Суперновая"));

        questions.add(new Astronomy(4, "Что из перечисленного не является планетой нашей Солнечной системы?",
                "Плутон — был признан карликовой планетой, а не полноценной планетой.",
                "Плутон", "Земля", "Марс", "Нептун"));

        questions.add(new Astronomy(5, "Какая звезда является ближайшей к Земле?",
                "Солнце — звезда, вокруг которой вращается Земля и другие планеты Солнечной системы.",
                "Солнце", "Полярная звезда", "Вега", "Сириус"));

        questions.add(new Astronomy(6, "Какая планета имеет самый большой спутник в Солнечной системе?",
                "Юпитер имеет спутник Ганимед, который больше по размеру, чем Меркурий.",
                "Юпитер", "Земля", "Сатурн", "Марс"));

        questions.add(new Astronomy(7, "Что такое космология?",
                "Космология — это наука о происхождении, структуре, эволюции и судьбе Вселенной.",
                "Космология", "Астрономия", "Физика", "Химия"));

        questions.add(new Astronomy(8, "Как называется ближайшая к Земле галактика?",
                "Млечный Путь — это галактика, в которой расположена Земля, но ближайшей другой галактикой является Андромеда.",
                "Андромеда", "Млечный Путь", "Туманность Андромеды", "Галактика Сомбреро"));

        questions.add(new Astronomy(9, "Как называется самый яркий объект на ночном небе после Луны?",
                "Венера, иногда называемая утренней или вечерней звездой, является самым ярким объектом на ночном небе после Луны.",
                "Венера", "Марс", "Юпитер", "Сириус"));

        questions.add(new Astronomy(10, "Сколько планет в нашей Солнечной системе?",
                "В Солнечной системе 8 планет: Меркурий, Венера, Земля, Марс, Юпитер, Сатурн, Уран и Нептун.",
                "8", "9", "7", "10"));
    }

    public Astronomy getRandomQuestion() {
        Random random = new Random();
        int index = random.nextInt(questions.size());
        return questions.get(index);
    }

}

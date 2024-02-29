package com.houseofscientists.project1.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

@Entity
@Getter
@Setter
@DynamicUpdate
@DynamicInsert
@Table(name = "Questions")
public class Questions {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)//колонка генерируется на сотороне Postgres, Hibernate её не трогает
    private int id;

    @Column(name = "question")
    private String question;
    @Column(name = "answer1")

    private String answer1;
    @Column(name = "answer2")
    private String answer2;
    @Column(name = "answer3")
    private String answer3;
    @Column(name = "answer4")
    private String answer4;

//    private byte [] image;

    public Questions(String question, String answer1, String answer2, String answer3, String answer4) {
        this.question = question;
        this.answer1 = answer1;
        this.answer2 = answer2;
        this.answer3 = answer3;
        this.answer4 = answer4;
    }

    public Questions() {

    }

//    public Questions getRandomQuestion(){
//        Questions q = new Questions();
//        q.getQuestion(Math.random() * 6)
//    }
}

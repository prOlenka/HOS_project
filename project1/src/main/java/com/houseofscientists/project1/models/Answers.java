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
@Table(name = "Answers")
public class Answers {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY) //колонка генерируется на сотороне Postgres, Hibernate её не трогает
    private Long id;

    @Column(name = "id_questions")
    private Long idQuestions;
    @Column(name = "answer")
    private String answer;
    @Column(name = "right_answer")
    private Long rightAnswer;

//    private byte [] image;

}
